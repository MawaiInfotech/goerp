import 'package:flutter/material.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/pages/domain_page.dart';
import 'package:goerp/pages/navigation_page.dart';
import 'package:goerp/routes/app_routes.dart';
import 'package:goerp/themes/app_theme.dart';
import 'package:goerp/widgets/screen_size_init.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenSizeInit(
      designSize: const Size(414, 866),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
     //   initialRoute: AppRoutes.splashScreenPage,
        routes: AppRoutes.getRoutes(context),
        home: empCd == "" ? const DomainScreen() : const NavigationPage(),
      ),
    );
  }
}
