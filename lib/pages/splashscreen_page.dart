import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goerp/utils/screen_size_config.dart';

import '../constant.dart';
import '../routes/app_routes.dart';

class SplachScreenPage extends StatefulWidget {
  const SplachScreenPage({super.key});

  @override
  State<SplachScreenPage> createState() => _SplachScreenPageState();
}

class _SplachScreenPageState extends State<SplachScreenPage> {

  void initState(){
    super.initState();
    final ipAddress = prefsBox.get(kipAddress);
    if(ipAddress != null) {
      Future.microtask(() =>  Navigator.popAndPushNamed(context, AppRoutes.loginPage)// if exist redirect to home screen
      );
    }else{
      Future.microtask(() =>  Navigator.popAndPushNamed(context, AppRoutes.domainPage));// if exist redirect to home screen
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/goerp.ai.png", scale: 5.dw,),
      ),
    );
  }
}
