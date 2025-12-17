import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/pages/complaint_history_page.dart';
import 'package:goerp/pages/machine_handover_page.dart';
import 'package:goerp/pages/raise_complaint_page.dart';
import 'package:goerp/pages/rectification_page.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'package:provider/provider.dart';

import '../bloc/rectification_list_bloc.dart';
import '../bloc/reportlist_bolc.dart';
import '../model/rectification_list_model.dart';
import '../model/reportlist_model.dart';
import '../service/breakdown_service.dart';
import '../service/login_service.dart';
import '../service/reportlist_service.dart';
import '../state/rectification_list_state.dart';
import '../state/reportlist_state.dart';
import '../utils/screen_size_config.dart';

class BreakdownPage extends StatefulWidget {
  const BreakdownPage({super.key});

  @override
  State<BreakdownPage> createState() => _BreakdownPageState();
}

class _BreakdownPageState extends State<BreakdownPage> {
  late final ReportListBloc bloc;
  late final BreakdownService breakdownService;
  late final RectificationListBloc rectificationListBloc;

  @override
  void initState() {
    final reportListService =
        Provider.of<ReportListService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen: false);
    breakdownService = Provider.of<BreakdownService>(context, listen: false);
    rectificationListBloc = RectificationListBloc(breakdownService);
    rectificationListBloc.init("", "");
    bloc = ReportListBloc(reportListService, loginService);
    bloc.init(modules: 'Utility', filetp: 'M');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _buildMachineCodeDialog();
    });
    super.initState();
  }

  final List<Map<String, dynamic>> options = [
    {
      'title': 'Raise Complaint',
      'icon': "assets/images/complain.png",
      'color1': Colors.redAccent,
      'color2': Colors.orange,
    },
    {
      'title': 'Machine Rectification',
      'icon': "assets/images/technician.png",
      'color1': Colors.blueAccent,
      'color2': Colors.lightBlue,
    },
    {
      'title': 'Machine Handover',
      'icon': "assets/images/factory-machine.png",
      'color1': Colors.green,
      'color2': Colors.teal,
    },
    {
      'title': 'Complaint History',
      'icon': "assets/images/complaint-history.png",
      'color1': Colors.deepPurple,
      'color2': Colors.purpleAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      body: SafeArea(child: _buildBody()),
    );
  }

  _buildBody() {
    return BlocConsumer<ReportListBloc, ReportListState>(
      bloc: bloc,
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

  Widget _buildLoading(List<ReportListModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(List<ReportListModel> reportList) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(

          ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: reportList.length,
          //  itemCount: options.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // two per row
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            final item = options[index];
            return GestureDetector(
              onTap: () {
                if (reportList[index].fileId == "M00032") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RaiseComplaintPage()));
                }
                if (reportList[index].fileId == "M00033") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RectificationPage()));
                }
                if (reportList[index].fileId == "M00034") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MachineHandoverPage()));
                }
                if (reportList[index].fileId == "M00035") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ComplaintHistoryPage()));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [item['color1'], item['color2']],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: item['color1'].withOpacity(0.4),
                      blurRadius: 10,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item['icon'],
                      scale: 12,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      reportList[index].fileDisplayName,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _buildMachineListBody() {
    return BlocConsumer<RectificationListBloc, RectificationListState>(
      bloc: rectificationListBloc,
      listener: (_, state) {
        state.maybeWhen(
          success: (machines) {
            //  _filteredMachines.value = machines;
          },
          content: (machines) {
            //  _filteredMachines.value = machines;
          },
          orElse: () {},
        );
      },
      builder: (_, state) {
        return state.when(
          loading: _buildMachineCodeLoading,
          content: _buildMachineListContent,
          success: _buildMachineListContent,
          failed: (form, __) => _buildMachineListContent(form),
        );
      },
    );
  }

  Widget _buildMachineCodeLoading(List<RectificationListModel> model) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildMachineListContent(List<RectificationListModel> model) {
    // initialize filtered list only once
    //  _filteredMachines.value = model;

    return SizedBox(
      width: ScreenSizeConfig.getFullWidth,
      child: ListView.builder(
          itemCount: model.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final machine = model[index];
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: Colors.yellow.shade100, // FOCUSED HIGHLIGHT LOOK
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange, width: 1),
              ),
              child: Text(
                "${machine.complainNo} - ${machine.machineName}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            );
          }),
    );
  }

  Future _buildMachineCodeDialog() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          insetPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Container(
                width: MediaQuery.of(context).size.width, // FULL WIDTH
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// TITLE
                     Container(
                       color: const Color(0xffac1f1a),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: const Text(
                        "Machine Under Maintenance",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    /// BODY CONTENT (LIST)
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: _buildMachineListBody(),
                    ),

                    const SizedBox(height: 10),

                    /// CLOSE BUTTON
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          "Close",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

