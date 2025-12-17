import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/pages/profile_page.dart';
import 'package:goerp/pages/reports_page.dart';
import 'package:goerp/pages/utility_page.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'drawer_page.dart';
import 'home_page.dart';
import 'login_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int pageIndex = 0;
  late PageController pageController;

  var Items = [
    Image.asset(
      'assets/images/home.png',
      scale: 15.dw,
    ),

    Image.asset(
      'assets/images/bar-graph.png',
      scale: 15.dw,
    ),
    Image.asset(
      'assets/images/utility.png',
      scale: 12.dw,
    ),
    Image.asset(
      'assets/images/profile.png',
      scale: 15.dw,
    ),
  ];

  List<Widget> tabPages = [
    const HomePage(),
    const ReportsPage(),
    const UtilityPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    pageController.jumpToPage(index);
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

  final double xOffset = 230;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return showExitPopup();
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar:const AppTopBar() ,
        drawer:Drawerui(),
        bottomNavigationBar: Container(
          //height: 90,
          color: AppColors.red,
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: AppColors.grey,
            items: Items,
            index: pageIndex,
            onTap: onTabTapped,
          ),
        ),
        body: PageView(
          children: tabPages,
          onPageChanged: onPageChanged,
          scrollBehavior: const ScrollBehavior(),controller: pageController,
        ),
      ),
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Confirm"),
                content: const Text("Do you want to exit the App"),
                actions: [
                  ElevatedButton(
                      onPressed: () {

                        Navigator.of(context).pop();
                      },
                      child: const Text("No")),
                  ElevatedButton(
                      onPressed: () {
                        //exit(0);
                        // SystemNavigator.pop();
                       prefsBox.clear();
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LoginPage()),
                            (route) => false);

                        //Navigator.of(context).pop(true);
                      },
                      child: const Text("Yes"))
                ],
              );
            }) ??
        false;
  }
}
