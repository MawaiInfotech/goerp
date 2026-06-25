import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/sos_bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/category_list_service.dart';
import 'package:goerp/state/sos_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../bloc/login_bloc.dart';
import '../service/login_service.dart';
import 'login_page.dart';


class Drawerui extends StatefulWidget {
  const Drawerui({Key? key}) : super(key: key);

  @override
  _DraweruiState createState() => _DraweruiState();
}

class _DraweruiState extends State<Drawerui> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation<Offset> slideAnimation;

  late final LogInPageBloc logInPageBloc;

  late CategoryListService categoryListService;

  late SosBloc sosBloc;

  @override
  void initState() {
    final loginService = Provider.of<LoginService>(context, listen: false);
    logInPageBloc = LogInPageBloc(loginService);

    controller =  AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    slideAnimation = Tween<Offset>(begin: const Offset(0.0, -4.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
    controller.addListener(() {
      setState(() {});
    });
    controller.forward();
     categoryListService = Provider.of<CategoryListService>(context, listen: false);
     sosBloc = SosBloc(categoryListService);
    super.initState();
    // Add code after super
  }


  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: Drawer(
        elevation: 10,
        child:Column(
          children: [
            UserAccountsDrawerHeader (
                decoration: const BoxDecoration(
                    image: DecorationImage(fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                        image: AssetImage('assets/images/background.ico')
                    )
                ),
                currentAccountPicture:  CircleAvatar(
                  radius: 40.dw,
                  foregroundImage: const AssetImage('assets/images/profile.png'),
                ),
                accountName: Text(compName,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                accountEmail: Text(empCd,style: const TextStyle(fontSize: 15))), compName == "DPS GROUP" ? Expanded(child: _buildDrawer()) : Expanded(child: Container()),
            // ListTile(
            //   leading: const Icon(Icons.smart_toy_outlined, color: Colors.blue),
            //   title: const Text('AI Assistant'),
            //   subtitle: const Text('Gemini · Groq · OpenRouter · Claude'),
            //   onTap: () {
            //     Navigator.pop(context);
            //     Navigator.pushNamed(context, '/chatbotPage');
            //   },
            // ),
            SafeArea(
              bottom: true,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).pushAndRemoveUntil(
                      CupertinoPageRoute(
                          builder: (context) => const LoginPage()
                      ),
                          (_) => false,
                    );
                    await prefsBox.delete("Emp_Id");
                  },
                  child: const Text("Logout",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade800,
                      elevation: 8,
                      fixedSize: const Size(250, 50),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(60), bottomLeft: Radius.circular(60))
                      )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildDrawer(){
    return BlocConsumer<SosBloc, SosState>(
        bloc: sosBloc,
        listener: (_, state) {
          state.maybeWhen(
              success: (_, message) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message ?? "Something")));
              },
              failed: (_, message) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message)));
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeWhen(loading: (_) {
            return const CircularProgressIndicator();
          }, orElse: () {
            return _buildDrawerList();
          });
        });
  }

  _buildDrawerList()
  {
    return ListView(
      shrinkWrap: true,
      children: [
        InkWell(
          onTap: (){
            _sosOnOff("Y");
          },
          hoverColor: Colors.orange,
          splashColor: Colors.lightBlue.shade800,
          child: Padding(
            padding: EdgeInsets.all(8.dw),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.dw),
                  child: Image.asset(
                    "assets/images/bar-graph.png",
                    scale: 16,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0.dw),
                  child: Text(
                    "SOS OFF",
                    style: TextStyle(
                        fontSize: 20.dw,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),

        // InkWell(
        //   onTap: (){
        //     _sosOnOff("N");
        //   },
        //   hoverColor: Colors.orange,
        //   splashColor: Colors.lightBlue.shade800,
        //   child: Padding(
        //     padding: EdgeInsets.all(8.dw),
        //     child: Row(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.only(left: 20.dw),
        //           child: Image.asset(
        //             "assets/images/bar-graph.png",
        //             scale: 16,
        //           ),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.all(10.0.dw),
        //           child: Text(
        //             "SOS ON",
        //             style: TextStyle(
        //                 fontSize: 20.dw,
        //                 fontWeight: FontWeight.bold),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
  _sosOnOff(String status) async {
    await sosBloc.init(status);
  }
}
