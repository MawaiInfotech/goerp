import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
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
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int pageIndex = 0;
  late PageController pageController;

  bool hasReports = false;
  bool hasUtility = false;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
    _loadFlagsFromPrefs();
  }

  /// ✅ READ FROM HIVE (NO API CALL)
  void _loadFlagsFromPrefs() {
    hasReports = prefsBox.get(kHasReports, defaultValue: false);
    hasUtility = prefsBox.get(kHasUtility, defaultValue: false);

    // Safety: reset page index if invalid
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final maxIndex = pages.length - 1;
      if (pageIndex > maxIndex) {
        setState(() {
          pageIndex = 0;
          pageController.jumpToPage(0);
        });
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() => pageIndex = page);
  }

  void onTabTapped(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  /// ---------------- NAV ITEMS ----------------
  List<Widget> get navItems {
    final items = <Widget>[
      Image.asset('assets/images/home.png', scale: 15.dw),
    ];

    if (hasReports) {
      items.add(
        Image.asset('assets/images/bar-graph.png', scale: 15.dw),
      );
    }

    if (hasUtility) {
      items.add(
        Image.asset('assets/images/utility.png', scale: 12.dw),
      );
    }

    items.add(
      Image.asset('assets/images/profile.png', scale: 15.dw),
    );

    return items;
  }

  /// ---------------- PAGES ----------------
  List<Widget> get pages {
    final list = <Widget>[
      const HomePage(),
    ];

    if (hasReports) {
      list.add(const ReportsPage());
    }

    if (hasUtility) {
      list.add(const UtilityPage());
    }

    list.add(const ProfilePage());

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => showExitPopup(),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: const AppTopBar(),
        drawer: const Drawerui(),
        bottomNavigationBar: Container(
          color: AppColors.red,
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: AppColors.grey,
            items: navItems,
            index: pageIndex,
            onTap: onTabTapped,
          ),
        ),
        body: PageView(
          controller: pageController,
          children: pages,
          onPageChanged: onPageChanged,
          physics: const NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }

  /// ---------------- EXIT ----------------
  Future<bool> showExitPopup() async {
    return await showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Confirm"),
        content: const Text("Do you want to exit the App"),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("No"),
          ),
          ElevatedButton(
            onPressed: () {
              prefsBox.clear();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => const LoginPage(),
                ),
                    (_) => false,
              );
            },
            child: const Text("Yes"),
          ),
        ],
      ),
    ) ??
        false;
  }
}
