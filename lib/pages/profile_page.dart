import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../bloc/login_bloc.dart';
import '../state/login_state.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  late final LogInPageBloc logInPageBloc;

  @override
  void initState() {
    final loginService = Provider.of<LoginService>(context, listen: false);
    logInPageBloc = LogInPageBloc(loginService);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey.shade100,
        body: BlocBuilder<LogInPageBloc, LoginPageState>(
            bloc: BlocProvider.of<LogInPageBloc>(context),
            builder: (context, state) {
              return Column(
                children: [
                  ClipPath(
                    clipper: MyCustomClipper(),
                    child: Container(
                      height: 400.dw,
                      color: AppColors.red,
                      child: Column(
                        children: [
                          _buildImage(),
                          _buildCompanyText(
                              title: unitCd,
                              title1: compName),

                          _buildText(
                              title: empCd)
                        ],
                      ),
                    ),
                  ),
                ],
              );
            })
    );
  }

  _buildImage() {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 40),
      child: const CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage('assets/images/profile.png'),
      ),
    );
  }

  _buildText({required String title}) {
    return Text(
      title,
      // Helper.getuserName(),
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 18.dw, fontWeight: FontWeight.w500, color: AppColors.white),
    );
  }
}

_buildCompanyText({required String title, required String title1}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title + "- ",
        // Helper.getuserName(),
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18.dw,
            fontWeight: FontWeight.w500,
            color: AppColors.white),
      ),
      Text(
        title1,
        // Helper.getuserName(),
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18.dw,
            fontWeight: FontWeight.w500,
            color: AppColors.white),
      ),
    ],
  );
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 2.dh);
    path.cubicTo(
        size.width / 4.dw,
        3 * (size.height / 2).dw,
        3 * (size.width / 6).dw,
        size.height / 2.dh,
        size.width,
        size.height * 0.8.dw);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
