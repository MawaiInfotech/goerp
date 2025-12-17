import 'package:animated_widgets/widgets/opacity_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/login_bloc.dart';
import 'package:goerp/bloc/unit_list_cubit.dart';
import 'package:goerp/model/login_model.dart';
import 'package:goerp/model/unitlist_model.dart';
import 'package:goerp/pages/navigation_page.dart';
import 'package:goerp/service/login_service.dart';
import 'package:goerp/state/login_state.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/apptextfield.dart';
import '../animation/termsanimation.dart';
import '../model/companyname_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LogInPageBloc bloc;
  late final UnitListCubit unitListCubit;

  @override
  void initState() {
    final loginService = Provider.of<LoginService>(context, listen: false);
    bloc = LogInPageBloc(loginService);
    unitListCubit = UnitListCubit(loginService);
    bloc.getCompanyDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: true,
          //Bottom Navigation Bar
          bottomNavigationBar: const BottomAppBar(
            elevation: 0.0,
            color: Colors.transparent,
            child: Text(
              "© Mawai infotech Ltd. All Rights Reserved",
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColors.black),
            ),
          ),
          body: SafeArea(
              child: BlocConsumer<LogInPageBloc, LoginPageState>(
                  bloc: bloc,
                  listener: (_, state) {
                    final isSuccess = state.maybeWhen(
                        success: (_) => true, orElse: () => false);
                    if (isSuccess) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const NavigationPage()));
                    }
                    final hasFailed = state.maybeWhen(
                        failed: (_, __) => true, orElse: () => false);
                    if (hasFailed) {
                      final message = state.maybeWhen(
                          failed: (_, m) => m, orElse: () => null);
                      _showSnackBar(message!);
                    }
                  },
                  builder: (_, state) {
                    return state.when(
                        loading: _buildLoading,
                        content: _buildContent,
                        success: _buildContent,
                        failed: (form, _) => _buildContent(form));
                  }))),
    );
  }

  _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.black,
        content: Text(message, style: const TextStyle(color: Colors.white))));
  }

  Widget _buildLoading(LoginModel model) {
    return   const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(LoginModel model) {
    return Center(
      child: ListView(
        shrinkWrap: true,
      children: [
      _buildTerms(),
      _buildMawaiLogo(model.companyName),
      _buildMawaiText(model.companyName),
      _buildTextField(model)
      ],
      ),
    );
  }

  _buildTerms() {
    return const TermsAnimation();
  }

  _buildMawaiLogo(CompanyName? companyName) {
    return Image.network(
      companyName?.companyImage ?? "",
      errorBuilder: (BuildContext context, object, StackTrace) {
        return Image.asset(
          'assets/images/mawailogo.png',
          filterQuality: FilterQuality.high,
          colorBlendMode: BlendMode.difference,
          scale: 6.8.dw,
        );
      },
      filterQuality: FilterQuality.high,
      colorBlendMode: BlendMode.difference,
       scale: 8.dw,
    );
  }

  _buildMawaiText(CompanyName? companyName) {
    return Text(
      companyName?.companyName ?? "",
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black, fontSize: 18.dw, fontWeight: FontWeight.bold),
    );
  }

  _buildTextField(LoginModel model) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppTextField(
            hintText: "User Code",
            icon: Icons.person,
            error: model.errors['userName'],
            onSearchChanged: bloc.updateUsername),
        AppTextField(
          hintText: "Password",
          isPassword: true,
          error: model.errors['password'],
          onSearchChanged: bloc.updatePassword,
        ),
        //SignIn  button
        _buildSignInButton()
      ],
    );
  }


  _buildSignInButton() {
    return OpacityAnimatedWidget.tween(
      opacityDisabled: 0,
      opacityEnabled: 1,
      duration: const Duration(milliseconds: 1500),
      child: Container(
        margin: EdgeInsets.only(top:20.dh),
        width: 200.dw,
        height: 60.dh,
        //padding: EdgeInsets.all(60),
        child: ElevatedButton(
          onPressed: () {
            bloc.logIn();
          },
          child:  Text(
            "Sign In",
            style: TextStyle(
                color: Colors.white, fontSize: 20.dw, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.red,
              elevation: 15.0.dw,
              //side: BorderSide(color: Colors.black),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0.dw))),
        ),
      ),
    );
  }

  Future<bool> _showUnitDialogue() async {
    return await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: BlocBuilder<UnitListCubit, List<UnitListModel>>(
                  bloc: unitListCubit,
                    builder: (context, data) {
                  return SizedBox(
                    width: 100.dw,
                    height: 200.dh,
                    child: ListView.builder(
                        itemCount: data.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final unitListData = data[index];
                          return InkWell(
                            onTap: () {
                              bloc.updateunitCode(unitListData.name);
                              Navigator.pop(context, true);
                            },
                            child: Card(
                              elevation: 10,
                              child: Text(
                                unitListData.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20.dw,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                }),
              );
            }
            ) ??
        false;
  }

  Future<void> _handleError(var error) async {
    _showSnackBar(error.message);
  }

}
