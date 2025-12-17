import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/bloc/rectification_list_bloc.dart';
import 'package:goerp/model/rectification_list_model.dart';
import 'package:goerp/pages/rectification_detail_page.dart';
import 'package:goerp/state/rectification_list_state.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'package:provider/provider.dart';

import '../service/breakdown_service.dart';

class RectificationPage extends StatefulWidget {
  const RectificationPage({Key? key}) : super(key: key);

  @override
  State<RectificationPage> createState() => _RectificationPageState();
}

class _RectificationPageState extends State<RectificationPage> {
  final TextEditingController _searchController = TextEditingController();


  late final BreakdownService breakdownService;
  late final RectificationListBloc rectificationListBloc;

  @override
  void initState() {
    super.initState();
    // Set default Complaint Date & Time as current
    breakdownService = Provider.of<BreakdownService>(context, listen: false);
    rectificationListBloc = RectificationListBloc(breakdownService);
    rectificationListBloc.init("","");
  }

  // Static list (can be replaced with API data later)
  final List<Map<String, String>> breakdownList = [
    {
      "complaintNo": "BD25-25/001/00015",
      "breakdownDate": "30-10-2025, 9:00 AM",
      "machine": "MECH-0017",
      "complaintBy": "JAGDEEP SARMA",
      "status": "",
    },
    {
      "complaintNo": "BD25-25/001/00015",
      "breakdownDate": "30-10-2025, 18:20 PM",
      "machine": "MECH-0017",
      "complaintBy": "JAGDEEP SARMA",
      "status": "",
    },
    {
      "complaintNo": "BD25-25/001/00015",
      "breakdownDate": "30-10-2025, 9:00 AM",
      "machine": "MECH-0017",
      "complaintBy": "JAGDEEP SARMA",
      "status": "",
    },
    {
      "complaintNo": "BD25-25/001/00015",
      "breakdownDate": "30-10-2025, 18:20 PM",
      "machine": "MECH-0017",
      "complaintBy": "JAGDEEP SARMA",
      "status": "",
    },
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: const AppTopBar(),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return BlocConsumer<RectificationListBloc, RectificationListState>(
      bloc: rectificationListBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form));
      },
    );
  }

  Widget _buildLoading(List<RectificationListModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(List<RectificationListModel> model) {
    final query = _searchController.text.toLowerCase();

    // 🔍 Filter by complaint number or machine name
    final filteredList = model.where((item) {
      return item.complainNo.toLowerCase().contains(query) ||
          item.machineName.toLowerCase().contains(query);
    }).toList();

    return Column(
      children: [
        // 🔹 Page title
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          color: const Color(0xFFF8EDEB),
          child: const Text(
            "Machine BreakDown Rectification",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF1E3A5F),
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 5),

        // 🔍 Search Field
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              hintText: 'Search by Complaint No or Machine Name...',
              filled: true,
              contentPadding: EdgeInsets.zero,
              fillColor: Colors.grey.shade300,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
            ),
            onChanged: (value) => setState(() {}),
          ),
        ),

        // 🧾 Table Header
        Container(
          color: Colors.blue.shade300,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          child: Row(
            children: [
              _headerCell("Complaint No", flex: 4),
              _divider(),
              _headerCell("BreakDown Date & Time", flex: 3),
              _divider(),
              _headerCell("Machine", flex: 2),
              _divider(),
              _headerCell("Complaint By", flex: 2),
              _divider(),
              _headerCell("Status", flex: 3),
            ],
          ),
        ),

        // 📋 Filtered Table Body
        Expanded(
          child: filteredList.isEmpty
              ? const Center(
            child: Text(
              'No results found',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          )
              : ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              final item = filteredList[index];
              final isEven = index % 2 == 0;

              return Container(
                color: isEven ? Colors.white : const Color(0xFFE6F3F9),
                padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Row(
                  children: [
                    _dataCell(
                      InkWell(
                        onTap: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RectificationDetailPage(
                                unitCode: item.unitCode,
                                unitName: item.unitName,
                                complaintNo: item.complainNo,
                                machineCode: item.machineCode,
                                machineName: item.machineName,
                                details: item.breakdownDetails,
                                dateTime: item.breakdownDtTm,
                                compId: item.compId,
                                status: item.status,
                                targetDtTm: item.targetDtTime,
                                remarkTarget: item.remarkTarget,
                                image: item.image,
                              ),
                            ),
                          );

                          if (result == "refresh") {
                            setState(() {
                              rectificationListBloc.init("", "");
                            });
                          }

                        },
                        child: Text(
                          item.complainNo,
                          style: const TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 9,
                          ),
                        ),
                      ),
                      flex: 4,
                    ),
                    _divider(),
                    _dataCell(
                        Text(item.breakdownDtTm,
                            style: const TextStyle(fontSize: 9)),
                        flex: 3),
                    _divider(),
                    _dataCell(
                        Text(item.machineName,
                            style: const TextStyle(fontSize: 9)),
                        flex: 2),
                    _divider(),
                    _dataCell(
                        Text(item.complaintBy,
                            style: const TextStyle(fontSize: 9)),
                        flex: 2),
                    _divider(),
                    _dataCell(
                        Text(item.meaning,
                            style: const TextStyle(fontSize: 9)),
                        flex: 3),
                  ],
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 8),
      ],
    );
  }

  // 🔹 Reusable header cell
  Widget _headerCell(String title, {required int flex}) {
    return Expanded(
      flex: flex,
      child: Text(
        title,
        style: _headerStyle,
      ),
    );
  }

  // 🔹 Reusable data cell
  Widget _dataCell(Widget child, {required int flex}) {
    return Expanded(
      flex: flex,
      child: child,
    );
  }

  // 🔹 Vertical Divider between columns
  Widget _divider() {
    return Container(
      width: 1,
      height: 20,
      color: Colors.grey.shade400,
      margin: const EdgeInsets.symmetric(horizontal: 4),
    );
  }
}

const TextStyle _headerStyle = TextStyle(
  fontWeight: FontWeight.w600,
  color:Colors.white,
  fontSize: 11,
);
