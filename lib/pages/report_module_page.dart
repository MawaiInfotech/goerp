import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/reportlist_bolc.dart';
import 'package:goerp/model/reportlist_model.dart';
import 'package:goerp/pages/graph_page.dart';
import 'package:goerp/pages/report_%20card_page.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/service/reportlist_service.dart';
import 'package:goerp/state/reportlist_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import '../themes/app_colors.dart';

class ReportListPage extends StatefulWidget {
  ReportListPage(this.modules,{Key? key}) : super(key: key);

  String modules;
  @override
  State<ReportListPage> createState() => _ReportListPageState();
}

class _ReportListPageState extends State<ReportListPage> {
  late final ReportListBloc bloc;

  @override
  void initState() {
    final reportListService = Provider.of<ReportListService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen: false);
    bloc = ReportListBloc(reportListService, loginService);
    bloc.init(modules: widget.modules, filetp:'RG');
    super.initState();
  }

  List reportImages = [
    'assets/images/report.png',
    'assets/images/report1.png',
    'assets/images/report2.png',
    'assets/images/report3.png',
    'assets/images/report4.png',
  ];

  List graphImages = [
    'assets/images/graph1.png',
    'assets/images/graph2.png',
    'assets/images/graph3.png',
    'assets/images/graph4.png',
    'assets/images/graph.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
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
    return const Center(child: Text('No Data'));
  }

  Widget _buildContent(List<ReportListModel> reportList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GridView.builder(
            itemCount: reportList.length,
            padding: const EdgeInsets.all(8),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
            ), itemBuilder: (BuildContext context, int index) {
              var model = reportList[index];
              return InkWell(
                onTap: () {
                  if (model.fileType == "G") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Graphpage(model.fileId)));
                  } else {
                    if (model.fileType == "R") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReportCardpage(model.fileId)));
                    }
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
                        padding: const EdgeInsets.only(top: 5),
                        child: SizedBox(
                          child: Image.asset(
                            ( model.fileType=="G") ? graphImages[index] :reportImages[index],
                            scale: 14.dw,
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          model.fileDisplayName,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 3,
                          style:  TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.dw,
                              letterSpacing: 1),
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
