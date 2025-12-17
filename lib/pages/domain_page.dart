import 'dart:async';
import 'package:flutter/material.dart';
import 'package:goerp/routes/app_routes.dart';
import 'package:goerp/themes/app_colors.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../constant.dart';

class DomainScreen extends StatefulWidget {
  const DomainScreen({Key? key}) : super(key: key);

  @override
  State<DomainScreen> createState() => _DomainScreenState();
}

class _DomainScreenState extends State<DomainScreen> {

  TextEditingController ipController = TextEditingController();

  TextEditingController domainController = TextEditingController();

  var ipNumber;

  var domainName;

  void initState(){
    super.initState();
    final ipAddress = prefsBox.get(kipAddress);
    if(ipAddress != null) {
      Future.microtask(() =>  Navigator.popAndPushNamed(context, AppRoutes.loginPage)// if exist redirect to home screen
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.dh,),
              _buildLogoImage(),
               _buildWelcomeText(),
               _buildWelcomeSubText(),
               _buildTextFieldName("Enter IP Address : Port Number"),
              _buildIpTextFormField(),
              const SizedBox(height: 10,),
             // _buildTextFieldName("Enter Domain Name"),
            //  _buildDomainTextFormField(),
              Center(
                child: Container(
                    height:70.dw, //height of button
                    width:70.dw,
                    margin: EdgeInsets.only(top: 20.dh),//width of button
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.red, //background color of button
                          side: BorderSide(width:3.dw, color:Colors.red.shade100), //border width and color
                          elevation: 3, //elevation of button
                          shape: RoundedRectangleBorder( //to set border radius to button
                              borderRadius: BorderRadius.circular(50)
                          ),
                        ),
                        onPressed: () async {
                          ipNumber = ipController.text;
                          await prefsBox.put(kipAddress, ipNumber);
                          Navigator.pushReplacementNamed(context, AppRoutes.loginPage);
                        },
                        child: const Icon(Icons.arrow_forward_ios)
                    )
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  _buildLogoImage(){
    return Center(
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 50.dh),
        child: Image.asset(
          'assets/images/goerp.ai.png',
          scale: 4,
        ),
      ),
    );
  }

  _buildWelcomeText(){
    return Text(
      "Welcome ",
      style: TextStyle(fontSize: 30.dw),
    );
  }

  _buildWelcomeSubText(){
    return Padding(
      padding: EdgeInsets.only(bottom: 15.dh),
      child: const Text(
        "We are happy to see you here!",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }

  _buildTextFieldName(String title){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.dh),
      child:  Text(
        title,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    );
  }

  _buildIpTextFormField(){
    return TextFormField(
      controller: ipController,
      cursorColor: AppColors.red,
      decoration: InputDecoration(
          prefixIcon:  Text(
            " https:// ",
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.black,fontSize: 15.dw),
          ),
          prefixIconConstraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0
          ),


          suffixIconConstraints: const BoxConstraints(
              minWidth: 0,
              minHeight: 0
          ),
          hintText: 'Enter Your IP here..',
          hintStyle:  TextStyle(color: Colors.grey,fontSize: 15.dw),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(color: Colors.grey.shade300,width: 2.dw)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  BorderSide(color: Colors.red.shade100,width: 2.dw))),
    );
  }

}
