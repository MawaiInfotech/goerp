import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/service/breakdown_service.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/approve_bloc.dart';
import 'package:goerp/bloc/login_bloc.dart';
import 'package:goerp/model/domain_model.dart';
import 'package:goerp/service/approve_service.dart';
import 'package:goerp/service/attendance_service.dart';
import 'package:goerp/service/category_list_service.dart';
import 'package:goerp/service/graph_service.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/service/report_service.dart';
import 'package:goerp/service/reportlist_service.dart';
import 'package:goerp/service/reports_card.dart';
import 'package:goerp/service/view_page_service.dart';
import 'app.dart';
import 'bloc/graph_bloc.dart';
import 'constant.dart';
import 'package:path_provider/path_provider.dart' as path_provider;


Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();

  final directory = await path_provider.getApplicationDocumentsDirectory();

  Hive
    ..init(directory.path)
    ..registerAdapter(DomainModelAdapter());

  await Hive.openBox(kPrefsBox);

  final loginService = LoginService();
  final reportService = ReportService();
  final graphService = GraphService();
  final categoryListService = CategoryListService();
  final myApp = MultiProvider(
      providers: [
        Provider<LoginService>(create: (_)=> loginService),
        Provider<CategoryListService>(create: (_)=> categoryListService,),
        Provider<ViewPageService>(create: (_) => ViewPageService()),
        Provider<ReportService>(create: (_) =>reportService) ,
        Provider<ReportListService>(create: (_) =>ReportListService()) ,
        Provider<ReportCardService>(create: (_)=> ReportCardService()),
        Provider<AttendanceService>(create: (_)=> AttendanceService()),
        Provider<BreakdownService>(create: (_)=> BreakdownService()),
  ],
  child: MultiBlocProvider(
      providers:  [
        BlocProvider(create: (_) => LogInPageBloc(loginService)),
        BlocProvider( create: (_) => ApproveRevertBloc(ApprovePageService(), loginService)),
        BlocProvider( create: (_) => GraphBloc( reportService, graphService, loginService),)
      ],
      child: const MyApp()),
  );

  runApp(myApp);
}


