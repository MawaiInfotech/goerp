import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecureScreenWrapper extends StatefulWidget {
  final Widget child;
  final bool enableAndroidSecure;

  const SecureScreenWrapper({
    Key? key,
    required this.child,
    this.enableAndroidSecure = true,
  }) : super(key: key);

  @override
  State<SecureScreenWrapper> createState() => _SecureScreenWrapperState();
}

class _SecureScreenWrapperState extends State<SecureScreenWrapper>
    with WidgetsBindingObserver {

  static const platform = MethodChannel('secure_screen');

  bool _isHidden = false;
  StreamSubscription? _screenshotSub;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    if (widget.enableAndroidSecure) {
      _enableAndroidSecure();
    }

    _listenForScreenshot();
  }

  Future<void> _enableAndroidSecure() async {
    try {
      await platform.invokeMethod("enableSecure");
    } catch (_) {}
  }

  Future<void> _disableAndroidSecure() async {
    try {
      await platform.invokeMethod("disableSecure");
    } catch (_) {}
  }

  void _listenForScreenshot() {
    const EventChannel eventChannel =
    EventChannel('secure_screen_events');

    _screenshotSub =
        eventChannel.receiveBroadcastStream().listen((event) {
          if (event == "screenshot") {
            _showBlackOverlay();
          }
        });
  }

  void _showBlackOverlay() {
    setState(() => _isHidden = true);
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() => _isHidden = false);
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      setState(() => _isHidden = true);
    }
    if (state == AppLifecycleState.resumed) {
      setState(() => _isHidden = false);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _disableAndroidSecure();
    _screenshotSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (_isHidden)
          Container(
            color: Colors.black,
          ),
      ],
    );
  }
}
