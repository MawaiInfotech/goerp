import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/report_bloc.dart';
import 'package:goerp/model/graph_model.dart';
import 'package:goerp/model/report_model.dart';
import 'package:goerp/pages/report_module_page.dart';
import 'package:goerp/service/report_service.dart';
import 'package:goerp/state/report_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../service/login_service.dart';
import '../themes/app_colors.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  late final ReportBloc bloc;
  late ReportModel model;
  late GraphModel graphModel = const GraphModel();

  List images = [
    'assets/images/accounts.png',
    'assets/images/inventory.png',
    'assets/images/purchase_order.png',
    'assets/images/sales.png',
    'assets/images/sales.png',
  ];

  @override
  void initState() {
    final reportService = Provider.of<ReportService>(context, listen: false);
    final loginService = Provider.of<LoginService>(context, listen:  false);
    bloc = ReportBloc(reportService, loginService);
    bloc.init();
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
    return BlocConsumer<ReportBloc, ReportState>(
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

  Widget _buildLoading(List<ReportModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(List<ReportModel> reportList) {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReportListPage(model.modules)));
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
                            images[index],
                            scale: 14.dw,
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          model.modules,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 2,
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

  Widget _buildGridCard(ReportModel model) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ReportListPage(model.modules)));
      },
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: SizedBox(
                child: Image.asset(
                  "assets/images/aging.png",
                  scale: 3,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            SizedBox(
              child: Text(
                model.modules,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 2,
                style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    letterSpacing: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
