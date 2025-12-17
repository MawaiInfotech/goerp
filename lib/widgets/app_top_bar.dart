import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../themes/app_colors.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.grey,
      centerTitle: true,
      title: Image.asset(
        "assets/images/goerp.ai.png",
        scale: 6.dw,
      ),
      iconTheme: const IconThemeData(color: AppColors.black),
      automaticallyImplyLeading: true,
    );
  }

  static final _appBar = AppBar();

  @override
  Size get preferredSize => _appBar.preferredSize;
}
