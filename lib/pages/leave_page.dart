import 'package:flutter/material.dart';
import 'package:goerp/pages/request_leave.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../themes/app_colors.dart';

class LeavePage extends StatefulWidget {
  LeavePage(this.Leaves, {Key? key}) : super(key: key);

  String Leaves;
  @override
  State<LeavePage> createState() => _LeavePageState();
}

class _LeavePageState extends State<LeavePage> {
  @override
  initState() {
    widget.Leaves;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave", style: TextStyle(fontSize: 20.dw),),
        backgroundColor: AppColors.red,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.red,
        child: SizedBox(
          height: 80.dh,
          child: _buildRequestLeaveButton(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.dh),
              _buildLeaveListHistory(),
            ],
          ),
        ),
      ),
    );
  }

  _buildRequestLeaveButton(){
    return Center(
      child: ElevatedButton(
          onPressed: (){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const RequestLeaveScreen()));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.pastlegreybule
          ),
          child: Text("Request Leave", style: TextStyle(color: AppColors.black, fontSize: 18.dw),)
      ),
    );
  }

  _buildLeaveListHistory(){
    return  ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 10.dw,
          color: Colors.grey.shade50,
          margin: EdgeInsets.all(8.dw),
          shape: RoundedRectangleBorder(side: const BorderSide(color: AppColors.black), borderRadius: BorderRadius.circular(10.dw)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0.dw),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${"25/05/2023"}  -  ${"30/06/2023"}",
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16.dw,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "${"Fever"} - ${"2"}",
                      style: TextStyle(
                          color: AppColors.navyblue,
                          fontSize: 14.dw,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      width: 180.dw,
                      child: Text(
                        "${"Reason "} - ${"hello"}",
                        maxLines: 2,
                        style: TextStyle(
                            color: AppColors.navyblue,
                            fontSize: 14.dw,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },

    );
  }

}
