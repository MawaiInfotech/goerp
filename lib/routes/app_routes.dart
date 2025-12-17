import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:goerp/pages/attendance_page.dart';
import 'package:goerp/pages/breakdown_page.dart';
import 'package:goerp/pages/domain_page.dart';
import 'package:goerp/pages/navigation_page.dart';
import 'package:goerp/pages/profile_page.dart';
import 'package:goerp/pages/splashscreen_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';


class AppRoutes {
  static const loginPage = '/login_page';
   static const homePage = '/homePage';
   static const navigationPage = '/navigationPage';
   static const profilePage = '/profilePage';
   static const purchaseOrderPage = '/purchaseOrderPage';
   static const viewPage = '/viewPage';
   static const utilityListPage = '/utilityListPage';
   static const reportListPage = '/reportListPage';
   static const reportGraph = '/reportGraph';
   static const domainPage = '/domainPage';
   static const attendancePage = '/attendancePage';
   static const splashScreenPage = '/splashScreenPage';
   static const breakdownPage = '/breakdownPage';

  static Map<String, Widget Function(BuildContext)> getRoutes(BuildContext _) {
    return <String, Widget Function(BuildContext)>{
      loginPage: (_) => const LoginPage(),
      homePage: (_) => const HomePage(),
      navigationPage: (_) => const NavigationPage(),
      profilePage: (_) => const ProfilePage(),
      domainPage: (_) => const DomainScreen(),
      attendancePage: (_) => const AttendancePage(),
      splashScreenPage: (_) => SplachScreenPage(),
      breakdownPage: (_) => BreakdownPage()
      //leavePage: (_) => const LeavePage()
      // reportListPage: (_) => ReportListPage(),

     // viewPage: (_) => const ViewPage()

    };
  }
}
