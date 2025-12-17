import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/pages/breakdown_page.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/reportlist_bolc.dart';
import 'package:goerp/model/reportlist_model.dart';
import 'package:goerp/pages/attendence_scanner.dart';
import 'package:goerp/pages/dsr_page.dart';
import 'package:goerp/pages/leave_page.dart';
import 'package:goerp/service/reportlist_service.dart';
import 'package:goerp/state/reportlist_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../service/login_service.dart';
import '../themes/app_colors.dart';

class UtilityPage extends StatefulWidget {
  const UtilityPage({Key? key}) : super(key: key);

  @override
  State<UtilityPage> createState() => _UtilityPageState();
}

class _UtilityPageState extends State<UtilityPage> {
  late final ReportListBloc bloc;

  List images = [
    'assets/images/leave.png',
    'assets/images/attendance.png',
    'assets/images/dsr.png',
    'assets/images/teamwork.png',
    'assets/images/dsr.png',
  ];


  @override
  void initState() {
    final reportListService = Provider.of<ReportListService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen:  false);
    bloc = ReportListBloc(reportListService, loginService);
    bloc.init(modules: 'Utility', filetp: 'U');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
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
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GridView.builder(
            itemCount: reportList.length,
            padding: EdgeInsets.all(8.dw),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
            ), itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  if (reportList[index].fileDisplayName == "Leaves") {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => LeavePage(reportList[index].fileDisplayName)));
                  }
                  if(reportList[index].fileDisplayName == "Attendance"){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const AttendanceScannerPage()));
                  }
                  if(reportList[index].fileDisplayName == "Breakdown"){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const BreakdownPage()));
                  }
                  if(reportList[index].fileDisplayName == "DSR"){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const DsrPage()));
                  }
                },
                child: Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: colors[index],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.dw),
                        child: SizedBox(
                          child: Image.asset(
                           images[index],
                            scale: 10.dw,
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          //"",
                          reportList[index].fileDisplayName,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.dw,
                              letterSpacing: 0),
                        ),
                      ),
                    ],
                  ),
                ),
              );
          },

          ),
        ),
      ],
    );
  }

}
