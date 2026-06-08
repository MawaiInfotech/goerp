// lib/pages/chatbot_page.dart
//
// 🤖 GoERP AI Assistant — Multi-Provider (Gemini · Groq · OpenRouter · Claude)
//
// ══════════════════════════════════════════════════════════
//  FREE API KEYS — Get them here:
//  • Gemini (FREE):     https://aistudio.google.com/app/apikey
//  • Groq   (FREE):     https://console.groq.com/keys
//  • OpenRouter (FREE): https://openrouter.ai/keys
//  • Claude (PAID):     https://console.anthropic.com
// ══════════════════════════════════════════════════════════
//
// INTEGRATION STEPS:
//   1. Copy this file to lib/pages/chatbot_page.dart
//   2. Add route in lib/routes/app_routes.dart:
//        static const chatbotPage = '/chatbotPage';
//        chatbotPage: (_) => const ChatbotPage(),
//   3. Add drawer item (see bottom of file for snippet)
//   4. Open app → tap ⚙️ → select provider → enter free API key → done!

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../constant.dart';
import '../service/category_list_service.dart';
import '../service/login_service.dart';
import '../themes/app_colors.dart';
import '../utils/screen_size_config.dart';
import '../widgets/secure_screen_wrapper.dart';

// ══════════════════════════════════════════════
//  PROVIDER CONFIG
// ══════════════════════════════════════════════
enum AiProvider { gemini, groq, openrouter, claude }

class _ProviderConfig {
  final String name;
  final String subtitle;
  final String badge;
  final Color color;
  final IconData icon;
  final String hiveKey;
  final String modelHint;
  final String getKeyUrl;
  const _ProviderConfig({
    required this.name, required this.subtitle, required this.badge,
    required this.color, required this.icon, required this.hiveKey,
    required this.modelHint, required this.getKeyUrl,
  });
}

const _providers = <AiProvider, _ProviderConfig>{
  AiProvider.gemini: _ProviderConfig(
    name: 'Google Gemini', subtitle: 'gemini-1.5-flash', badge: 'FREE',
    color: Color(0xFF4285F4), icon: Icons.auto_awesome, hiveKey: 'geminiApiKey',
    modelHint: 'aistudio.google.com/app/apikey',
    getKeyUrl: 'https://aistudio.google.com/app/apikey',
  ),
  AiProvider.groq: _ProviderConfig(
    name: 'Groq', subtitle: 'llama-3.1-8b-instant', badge: 'FREE',
    color: Color(0xFFF55036), icon: Icons.bolt, hiveKey: 'groqApiKey',
    modelHint: 'console.groq.com/keys',
    getKeyUrl: 'https://console.groq.com/keys',
  ),
  AiProvider.openrouter: _ProviderConfig(
    name: 'OpenRouter', subtitle: 'llama-3.1-8b (free)', badge: 'FREE',
    color: Color(0xFF7C3AED), icon: Icons.hub_outlined, hiveKey: 'openrouterApiKey',
    modelHint: 'openrouter.ai/keys',
    getKeyUrl: 'https://openrouter.ai/keys',
  ),
  AiProvider.claude: _ProviderConfig(
    name: 'Claude', subtitle: 'claude-haiku-4-5', badge: 'PAID',
    color: Color(0xFFD97706), icon: Icons.psychology_outlined, hiveKey: 'claudeApiKey',
    modelHint: 'console.anthropic.com',
    getKeyUrl: 'https://console.anthropic.com',
  ),
};

// ══════════════════════════════════════════════
//  DATA MODEL
// ══════════════════════════════════════════════
class _ChatMessage {
  final String text;
  final bool isUser;
  final DateTime time;
  _ChatMessage({required this.text, required this.isUser}) : time = DateTime.now();
}

// ══════════════════════════════════════════════
//  ERP CONTEXT BUILDER
// ══════════════════════════════════════════════
class _ErpContext {
  static Future<Map<String, dynamic>> fetch(
      CategoryListService categoryService,
      LoginService loginService,
      ) async {
    List<Map<String, dynamic>> categories = [];
    try {
      final list = await categoryService.getCategoryList(empCd, unitCd);
      categories = list.map((c) => {
        'docType': c.docType, 'docName': c.docName,
        'unit': c.unit_cd, 'pendingCount': c.ctr,
      }).toList();
    } catch (_) {}
    return {
      'employeeCode': empCd, 'unitCode': unitCd,
      'userId': userId, 'companyName': compName,
      'pendingDocuments': categories,
      'totalPendingCount': categories.fold<int>(0, (s, c) => s + ((c['pendingCount'] as int?) ?? 0)),
    };
  }

  static String buildSystemPrompt(Map<String, dynamic> ctx) {
    final docs = (ctx['pendingDocuments'] as List?) ?? [];
    final docLines = docs.isEmpty
        ? '  (No pending documents or data unavailable)'
        : docs.map((d) => '  • ${d['docName']} (${d['docType']}) — Unit ${d['unit']}: ${d['pendingCount']} pending').join('\n');
    return '''
You are an intelligent ERP assistant for the GoERP mobile application.
You help employees with daily ERP tasks, document approvals, and business queries.

Live ERP Data (fetched right now):
- Employee Code: ${ctx['employeeCode']}
- Unit Code: ${ctx['unitCode']}
- User ID: ${ctx['userId']}
- Company: ${ctx['companyName']}
- Total Pending Documents: ${ctx['totalPendingCount']}

Pending Documents Breakdown:
$docLines

Rules:
- Answer questions about the live data above clearly and concisely.
- Keep responses short and mobile-friendly (2-4 sentences unless detail requested).
- Use bullet points for lists. Use **bold** for important numbers.
- If data is unavailable, say so clearly.
- Be professional, helpful, and friendly.
''';
  }
}

// ══════════════════════════════════════════════
//  AI SERVICE — all 4 providers
// ══════════════════════════════════════════════
class _AiService {
  // ── Gemini ─────────────────────────────────
  static Future<String> _askGemini({
    required String apiKey, required String systemPrompt,
    required List<_ChatMessage> history, required String userMessage,
  }) async {
    const model = 'gemini-1.5-flash';
    final url = 'https://generativelanguage.googleapis.com/v1beta/models/$model:generateContent?key=$apiKey';
    final contents = <Map<String, dynamic>>[];
    for (final msg in history.takeLast(10)) {
      contents.add({'role': msg.isUser ? 'user' : 'model', 'parts': [{'text': msg.text}]});
    }
    contents.add({'role': 'user', 'parts': [{'text': userMessage}]});
    final body = {
      'system_instruction': {'parts': [{'text': systemPrompt}]},
      'contents': contents,
      'generationConfig': {'temperature': 0.7, 'maxOutputTokens': 1024},
    };
    final response = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json'}, body: json.encode(body));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['candidates'][0]['content']['parts'][0]['text'] as String;
    } else if (response.statusCode == 400) {
      return '⚠️ Invalid Gemini API key. Get one FREE at:\naistudio.google.com/app/apikey';
    }
    final err = json.decode(response.body);
    return '⚠️ Gemini Error: ${err['error']?['message'] ?? response.statusCode}';
  }

  // ── Groq ───────────────────────────────────
  static Future<String> _askGroq({
    required String apiKey, required String systemPrompt,
    required List<_ChatMessage> history, required String userMessage,
  }) async {
    const url = 'https://api.groq.com/openai/v1/chat/completions';
    const model = 'llama-3.1-8b-instant';
    final messages = <Map<String, String>>[{'role': 'system', 'content': systemPrompt}];
    for (final msg in history.takeLast(10)) {
      messages.add({'role': msg.isUser ? 'user' : 'assistant', 'content': msg.text});
    }
    messages.add({'role': 'user', 'content': userMessage});
    final response = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer $apiKey'},
        body: json.encode({'model': model, 'messages': messages, 'max_tokens': 1024, 'temperature': 0.7}));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['choices'][0]['message']['content'] as String;
    } else if (response.statusCode == 401) {
      return '⚠️ Invalid Groq API key. Get one FREE at:\nconsole.groq.com/keys';
    }
    final err = json.decode(response.body);
    return '⚠️ Groq Error: ${err['error']?['message'] ?? response.statusCode}';
  }

  // ── OpenRouter ─────────────────────────────
  static Future<String> _askOpenRouter({
    required String apiKey, required String systemPrompt,
    required List<_ChatMessage> history, required String userMessage,
  }) async {
    const url = 'https://openrouter.ai/api/v1/chat/completions';
    const model = 'meta-llama/llama-3.1-8b-instruct:free';
    final messages = <Map<String, String>>[{'role': 'system', 'content': systemPrompt}];
    for (final msg in history.takeLast(10)) {
      messages.add({'role': msg.isUser ? 'user' : 'assistant', 'content': msg.text});
    }
    messages.add({'role': 'user', 'content': userMessage});
    final response = await http.post(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
          'HTTP-Referer': 'https://goerp.app',
          'X-Title': 'GoERP Assistant',
        },
        body: json.encode({'model': model, 'messages': messages, 'max_tokens': 1024}));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['choices'][0]['message']['content'] as String;
    } else if (response.statusCode == 401) {
      return '⚠️ Invalid OpenRouter API key. Get one FREE at:\nopenrouter.ai/keys';
    }
    final err = json.decode(response.body);
    return '⚠️ OpenRouter Error: ${err['error']?['message'] ?? response.statusCode}';
  }

  // ── Claude ─────────────────────────────────
  static Future<String> _askClaude({
    required String apiKey, required String systemPrompt,
    required List<_ChatMessage> history, required String userMessage,
  }) async {
    const url = 'https://api.anthropic.com/v1/messages';
    const model = 'claude-haiku-4-5-20251001';
    final messages = <Map<String, String>>[];
    for (final msg in history.takeLast(10)) {
      messages.add({'role': msg.isUser ? 'user' : 'assistant', 'content': msg.text});
    }
    messages.add({'role': 'user', 'content': userMessage});
    final response = await http.post(Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'x-api-key': apiKey,
          'anthropic-version': '2023-06-01',
        },
        body: json.encode({'model': model, 'max_tokens': 1024, 'system': systemPrompt, 'messages': messages}));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return (data['content'] as List).where((b) => b['type'] == 'text').map((b) => b['text'] as String).join('\n');
    } else if (response.statusCode == 401) {
      return '⚠️ Invalid Claude API key. Get one at:\nconsole.anthropic.com';
    }
    final err = json.decode(response.body);
    return '⚠️ Claude Error: ${err['error']?['message'] ?? response.statusCode}';
  }

  // ── Unified entry point ────────────────────
  static Future<String> ask({
    required AiProvider provider, required String userMessage,
    required Map<String, dynamic> erpContext, required List<_ChatMessage> history,
  }) async {
    final config = _providers[provider]!;
    final apiKey = prefsBox.get(config.hiveKey, defaultValue: '') as String;
    if (apiKey.isEmpty) {
      return '⚠️ No API key set for ${config.name}.\n\nTap ⚙️ Settings → select ${config.name} → paste your free key.\n\n🔗 ${config.getKeyUrl}';
    }
    final systemPrompt = _ErpContext.buildSystemPrompt(erpContext);
    try {
      switch (provider) {
        case AiProvider.gemini:
          return await _askGemini(apiKey: apiKey, systemPrompt: systemPrompt, history: history, userMessage: userMessage);
        case AiProvider.groq:
          return await _askGroq(apiKey: apiKey, systemPrompt: systemPrompt, history: history, userMessage: userMessage);
        case AiProvider.openrouter:
          return await _askOpenRouter(apiKey: apiKey, systemPrompt: systemPrompt, history: history, userMessage: userMessage);
        case AiProvider.claude:
          return await _askClaude(apiKey: apiKey, systemPrompt: systemPrompt, history: history, userMessage: userMessage);
      }
    } catch (e) {
      return '⚠️ Connection error. Check your internet.\n\n$e';
    }
  }
}

extension _ListTakeLast<T> on List<T> {
  List<T> takeLast(int n) => length <= n ? this : sublist(length - n);
}

// ══════════════════════════════════════════════
//  QUICK ACTIONS
// ══════════════════════════════════════════════
const _quickActions = [
  '📋 Pending documents',
  '🏭 My unit & company',
  '👤 My employee info',
  '📊 Order summary',
  '❓ What can you help with?',
];

// ══════════════════════════════════════════════
//  MAIN PAGE
// ══════════════════════════════════════════════
class ChatbotPage extends StatefulWidget {
  const ChatbotPage({Key? key}) : super(key: key);
  @override
  State<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> with TickerProviderStateMixin {
  final _messages = <_ChatMessage>[];
  final _controller = TextEditingController();
  final _scrollController = ScrollController();
  bool _isLoading = false;
  bool _contextLoaded = false;
  Map<String, dynamic> _erpContext = {};
  AiProvider _selectedProvider = AiProvider.gemini;
  late AnimationController _dotController;

  @override
  void initState() {
    super.initState();
    _dotController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200))..repeat();
    _initContext();
  }

  @override
  void dispose() {
    _dotController.dispose();
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _initContext() async {
    final cat = Provider.of<CategoryListService>(context, listen: false);
    final log = Provider.of<LoginService>(context, listen: false);
    _erpContext = await _ErpContext.fetch(cat, log);
    if (mounted) {
      setState(() => _contextLoaded = true);
      _addBotMessage(
        '👋 Hello **${_erpContext['employeeCode'] ?? ''}**! I\'m your GoERP AI Assistant.\n\n'
            'I can see **${_erpContext['totalPendingCount']} pending documents** awaiting approval.\n\n'
            'Tap ⚙️ to pick a free AI provider, then ask me anything!',
      );
    }
  }

  void _addBotMessage(String text) {
    setState(() => _messages.add(_ChatMessage(text: text, isUser: false)));
    _scrollToBottom();
  }

  Future<void> _send([String? override]) async {
    final text = (override ?? _controller.text).trim();
    if (text.isEmpty || _isLoading) return;
    _controller.clear();
    setState(() {
      _messages.add(_ChatMessage(text: text, isUser: true));
      _isLoading = true;
    });
    _scrollToBottom();
    final reply = await _AiService.ask(
      provider: _selectedProvider, userMessage: text,
      erpContext: _erpContext, history: _messages,
    );
    if (mounted) {
      setState(() => _isLoading = false);
      _addBotMessage(reply);
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
      }
    });
  }

  void _showSettings() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (_) => _SettingsSheet(
        selectedProvider: _selectedProvider,
        onProviderChanged: (p) => setState(() => _selectedProvider = p),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cfg = _providers[_selectedProvider]!;
    return SecureScreenWrapper(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F6FB),
        appBar: _buildAppBar(cfg),
        body: Column(
          children: [
            if (_contextLoaded) _buildStatsBanner(cfg),
            Expanded(child: _buildMessageList()),
            if (_isLoading) _buildTypingIndicator(cfg),
            if (_messages.length <= 1) _buildQuickActions(),
            _buildInputBar(cfg),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(_ProviderConfig cfg) => AppBar(
    backgroundColor: cfg.color, elevation: 0,
    leading: IconButton(icon: const Icon(Icons.arrow_back_ios, color: Colors.white), onPressed: () => Navigator.pop(context)),
    title: Row(children: [
      Container(width: 36, height: 36,
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), shape: BoxShape.circle),
          child: Icon(cfg.icon, color: Colors.white, size: 20)),
      const SizedBox(width: 10),
      Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text('ERP Assistant', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
        Row(children: [
          Container(padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              decoration: BoxDecoration(color: cfg.badge == 'FREE' ? Colors.green : Colors.orange, borderRadius: BorderRadius.circular(4)),
              child: Text(cfg.badge, style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold))),
          const SizedBox(width: 4),
          Flexible(child: Text(cfg.name, style: const TextStyle(color: Colors.white70, fontSize: 11), overflow: TextOverflow.ellipsis)),
        ]),
      ])),
    ]),
    actions: [
      IconButton(icon: const Icon(Icons.refresh, color: Colors.white), onPressed: () async {
        final cat = Provider.of<CategoryListService>(context, listen: false);
        final log = Provider.of<LoginService>(context, listen: false);
        _erpContext = await _ErpContext.fetch(cat, log);
        if (mounted) { setState(() {}); ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ERP data refreshed ✓'), duration: Duration(seconds: 1))); }
      }),
      IconButton(icon: const Icon(Icons.settings_outlined, color: Colors.white), onPressed: _showSettings),
    ],
  );

  Widget _buildStatsBanner(_ProviderConfig cfg) {
    final pending = (_erpContext['pendingDocuments'] as List?)?.length ?? 0;
    final total = _erpContext['totalPendingCount'] ?? 0;
    return Container(
      color: cfg.color,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(children: [
        _StatChip(icon: Icons.pending_actions, label: '$pending types', sub: 'Doc categories', color: Colors.orange),
        const SizedBox(width: 10),
        _StatChip(icon: Icons.assignment_late, label: '$total', sub: 'Pending total', color: Colors.red),
        const SizedBox(width: 10),
        _StatChip(icon: Icons.domain, label: unitCd.isNotEmpty ? unitCd : '-', sub: 'Your unit', color: Colors.greenAccent),
      ]),
    );
  }

  Widget _buildMessageList() {
    if (!_contextLoaded && _messages.isEmpty) {
      return const Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
        CircularProgressIndicator(), SizedBox(height: 12),
        Text('Loading ERP data...', style: TextStyle(color: Colors.grey)),
      ]));
    }
    return ListView.builder(
      controller: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      itemCount: _messages.length,
      itemBuilder: (_, i) => _MessageBubble(
        msg: _messages[i],
        providerColor: _providers[_selectedProvider]!.color,
        providerIcon: _providers[_selectedProvider]!.icon,
      ),
    );
  }

  Widget _buildTypingIndicator(_ProviderConfig cfg) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    child: Row(children: [
      Container(width: 32, height: 32, margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(color: cfg.color, shape: BoxShape.circle),
          child: Icon(cfg.icon, color: Colors.white, size: 16)),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(18),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 4, offset: const Offset(0, 2))]),
        child: AnimatedBuilder(
          animation: _dotController,
          builder: (_, __) => Row(mainAxisSize: MainAxisSize.min,
            children: List.generate(3, (i) {
              final t = _dotController.value;
              final phase = (t - i * 0.2).clamp(0.0, 1.0);
              final opacity = (phase < 0.5 ? phase * 2 : (1 - phase) * 2).clamp(0.3, 1.0);
              return Padding(padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Opacity(opacity: opacity,
                      child: Container(width: 6, height: 6, decoration: BoxDecoration(color: cfg.color, shape: BoxShape.circle))));
            }),
          ),
        ),
      ),
    ]),
  );

  Widget _buildQuickActions() => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    child: Row(children: _quickActions.map((q) => Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ActionChip(
        label: Text(q, style: const TextStyle(fontSize: 12)),
        backgroundColor: Colors.white,
        side: BorderSide(color: _providers[_selectedProvider]!.color.withOpacity(0.4)),
        onPressed: () => _send(q),
      ),
    )).toList()),
  );

  Widget _buildInputBar(_ProviderConfig cfg) => Container(
    color: Colors.white,
    padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8 + MediaQuery.of(context).padding.bottom),
    child: Row(children: [
      Expanded(child: TextField(
        controller: _controller,
        textCapitalization: TextCapitalization.sentences,
        onSubmitted: (_) => _send(),
        decoration: InputDecoration(
          hintText: 'Ask about orders, documents...',
          hintStyle: const TextStyle(fontSize: 13, color: Colors.grey),
          filled: true, fillColor: const Color(0xFFF4F6FB),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24), borderSide: BorderSide.none),
        ),
      )),
      const SizedBox(width: 8),
      GestureDetector(
        onTap: _send,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 44, height: 44,
          decoration: BoxDecoration(color: _isLoading ? Colors.grey : cfg.color, shape: BoxShape.circle),
          child: Icon(_isLoading ? Icons.hourglass_top : Icons.send_rounded, color: Colors.white, size: 20),
        ),
      ),
    ]),
  );
}

// ══════════════════════════════════════════════
//  SETTINGS BOTTOM SHEET
// ══════════════════════════════════════════════
class _SettingsSheet extends StatefulWidget {
  final AiProvider selectedProvider;
  final ValueChanged<AiProvider> onProviderChanged;
  const _SettingsSheet({required this.selectedProvider, required this.onProviderChanged});
  @override
  State<_SettingsSheet> createState() => _SettingsSheetState();
}

class _SettingsSheetState extends State<_SettingsSheet> {
  late AiProvider _selected;
  @override
  void initState() { super.initState(); _selected = widget.selectedProvider; }

  void _editKey(AiProvider provider) {
    final cfg = _providers[provider]!;
    final ctrl = TextEditingController(text: prefsBox.get(cfg.hiveKey, defaultValue: '') as String);
    showDialog(context: context, builder: (_) => AlertDialog(
      title: Row(children: [Icon(cfg.icon, color: cfg.color), const SizedBox(width: 8), Text(cfg.name)]),
      content: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: cfg.badge == 'FREE' ? Colors.green.withOpacity(0.1) : Colors.orange.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8)),
          child: Row(children: [
            Icon(cfg.badge == 'FREE' ? Icons.check_circle : Icons.monetization_on,
                color: cfg.badge == 'FREE' ? Colors.green : Colors.orange, size: 16),
            const SizedBox(width: 6),
            Flexible(child: Text(
                cfg.badge == 'FREE' ? '✅ FREE — ${cfg.modelHint}' : '💳 PAID — ${cfg.modelHint}',
                style: TextStyle(fontSize: 11, color: cfg.badge == 'FREE' ? Colors.green[700] : Colors.orange[700]))),
          ]),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: ctrl, obscureText: true,
          decoration: InputDecoration(hintText: 'Paste API key here...', border: const OutlineInputBorder(),
              prefixIcon: Icon(Icons.vpn_key, color: cfg.color)),
        ),
      ]),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
        ElevatedButton.icon(
          icon: const Icon(Icons.save, size: 16), label: const Text('Save'),
          style: ElevatedButton.styleFrom(backgroundColor: cfg.color),
          onPressed: () async {
            await prefsBox.put(cfg.hiveKey, ctrl.text.trim());
            if (mounted) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${cfg.name} key saved ✓'), duration: const Duration(seconds: 2)));
            }
          },
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            const Icon(Icons.smart_toy_outlined),
            const SizedBox(width: 8),
            const Text('AI Provider Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Spacer(),
            IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(context)),
          ]),
          const Text('Choose provider & manage API keys', style: TextStyle(color: Colors.grey, fontSize: 12)),
          const SizedBox(height: 16),
          ..._providers.entries.map((entry) {
            final provider = entry.key;
            final cfg = entry.value;
            final hasKey = (prefsBox.get(cfg.hiveKey, defaultValue: '') as String).isNotEmpty;
            final isSelected = _selected == provider;
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onTap: () { setState(() => _selected = provider); widget.onProviderChanged(provider); },
                borderRadius: BorderRadius.circular(12),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: isSelected ? cfg.color.withOpacity(0.1) : Colors.grey.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: isSelected ? cfg.color : Colors.grey.withOpacity(0.2), width: isSelected ? 2 : 1)),
                  child: Row(children: [
                    Container(width: 40, height: 40,
                        decoration: BoxDecoration(color: cfg.color.withOpacity(0.15), shape: BoxShape.circle),
                        child: Icon(cfg.icon, color: cfg.color, size: 20)),
                    const SizedBox(width: 12),
                    Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Row(children: [
                        Text(cfg.name, style: TextStyle(fontWeight: FontWeight.bold, color: isSelected ? cfg.color : Colors.black87)),
                        const SizedBox(width: 6),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(color: cfg.badge == 'FREE' ? Colors.green : Colors.orange, borderRadius: BorderRadius.circular(4)),
                            child: Text(cfg.badge, style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold))),
                      ]),
                      Text(cfg.subtitle, style: const TextStyle(fontSize: 11, color: Colors.grey)),
                    ])),
                    Column(children: [
                      Icon(hasKey ? Icons.check_circle : Icons.radio_button_unchecked,
                          color: hasKey ? Colors.green : Colors.grey, size: 16),
                      const SizedBox(height: 2),
                      Text(hasKey ? 'Key set' : 'No key',
                          style: TextStyle(fontSize: 9, color: hasKey ? Colors.green : Colors.grey)),
                    ]),
                    const SizedBox(width: 8),
                    IconButton(icon: Icon(Icons.vpn_key, size: 18, color: cfg.color), onPressed: () => _editKey(provider)),
                  ]),
                ),
              ),
            );
          }).toList(),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.blue.withOpacity(0.05), borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.withOpacity(0.2))),
            child: const Row(children: [
              Icon(Icons.info_outline, color: Colors.blue, size: 16), SizedBox(width: 8),
              Expanded(child: Text('API keys are stored securely on your device only.', style: TextStyle(fontSize: 11, color: Colors.blue))),
            ]),
          ),
          const SizedBox(height: 8),
        ]),
      ),
    );
  }
}

// ══════════════════════════════════════════════
//  REUSABLE WIDGETS
// ══════════════════════════════════════════════
class _MessageBubble extends StatelessWidget {
  final _ChatMessage msg;
  final Color providerColor;
  final IconData providerIcon;
  const _MessageBubble({required this.msg, required this.providerColor, required this.providerIcon});

  @override
  Widget build(BuildContext context) {
    final isUser = msg.isUser;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isUser) Container(width: 28, height: 28, margin: const EdgeInsets.only(right: 6, bottom: 2),
              decoration: BoxDecoration(color: providerColor, shape: BoxShape.circle),
              child: Icon(providerIcon, color: Colors.white, size: 14)),
          Flexible(child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
                color: isUser ? providerColor : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(18), topRight: const Radius.circular(18),
                    bottomLeft: Radius.circular(isUser ? 18 : 4), bottomRight: Radius.circular(isUser ? 4 : 18)),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 6, offset: const Offset(0, 2))]),
            child: _RichText(text: msg.text, isUser: isUser),
          )),
          if (isUser) Container(width: 28, height: 28, margin: const EdgeInsets.only(left: 6, bottom: 2),
              decoration: const BoxDecoration(color: Color(0xFFDDE3F0), shape: BoxShape.circle),
              child: const Icon(Icons.person, color: Colors.grey, size: 14)),
        ],
      ),
    );
  }
}

class _RichText extends StatelessWidget {
  final String text;
  final bool isUser;
  const _RichText({required this.text, required this.isUser});

  @override
  Widget build(BuildContext context) {
    final baseColor = isUser ? Colors.white : Colors.black87;
    final spans = <TextSpan>[];
    final regex = RegExp(r'\*\*(.*?)\*\*');
    int last = 0;
    for (final m in regex.allMatches(text)) {
      if (m.start > last) spans.add(TextSpan(text: text.substring(last, m.start), style: TextStyle(color: baseColor, fontSize: 13.5)));
      spans.add(TextSpan(text: m.group(1), style: TextStyle(color: baseColor, fontSize: 13.5, fontWeight: FontWeight.bold)));
      last = m.end;
    }
    if (last < text.length) spans.add(TextSpan(text: text.substring(last), style: TextStyle(color: baseColor, fontSize: 13.5)));
    return RichText(text: TextSpan(children: spans));
  }
}

class _StatChip extends StatelessWidget {
  final IconData icon; final String label, sub; final Color color;
  const _StatChip({required this.icon, required this.label, required this.sub, required this.color});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    decoration: BoxDecoration(color: Colors.white.withOpacity(0.15), borderRadius: BorderRadius.circular(10)),
    child: Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(icon, color: color, size: 16), const SizedBox(width: 6),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
        Text(sub, style: const TextStyle(color: Colors.white70, fontSize: 10)),
      ]),
    ]),
  );
}

// ══════════════════════════════════════════════
//  DRAWER INTEGRATION SNIPPET
//
//  In lib/pages/drawer_page.dart add:
//  import 'package:goerp/pages/chatbot_page.dart';
//
//  ListTile(
//    leading: const Icon(Icons.smart_toy_outlined, color: Colors.blue),
//    title: const Text('AI Assistant'),
//    subtitle: const Text('Gemini · Groq · OpenRouter · Claude'),
//    onTap: () {
//      Navigator.pop(context);
//      Navigator.pushNamed(context, '/chatbotPage');
//    },
//  ),
//
//  In lib/routes/app_routes.dart add:
//  static const chatbotPage = '/chatbotPage';
//  chatbotPage: (_) => const ChatbotPage(),
// ══════════════════════════════════════════════
