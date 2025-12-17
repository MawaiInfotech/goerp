import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:goerp/utils/screen_size_config.dart';
import '../themes/app_colors.dart';

class RequestLeaveScreen extends StatefulWidget {
  const RequestLeaveScreen({super.key});

  @override
  State<RequestLeaveScreen> createState() => _RequestLeaveScreenState();
}

class _RequestLeaveScreenState extends State<RequestLeaveScreen> {

  TextEditingController reasonTextController = TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  var applyLeave;
  var leavetype;
  var ccTo;
  var ccToCode;
  var balanceLeave;
  var leaveCode;
  var fromDate = "select Date";
  var toDate = " ";
  var difference;
  var controlCode;
  var contactNumber;
  var appliedTo;

  late DateTimeRange dateTimeRange =
  DateTimeRange(start: DateTime.now(), end: DateTime.now());

  void disposeValues() {
    fromDate = "Select Date";
    toDate = "";
    difference = "";
    leavetype = "Leave Type";
    dateTimeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Request Leave", style: TextStyle(fontSize: 20.dw),),
        backgroundColor: AppColors.red,
        centerTitle: true,
      ),
        body: _buildBody(),
    );
  }
  Widget _buildBody() {
      return SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.dw),
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHeadingText("Apply Leave For*"),
                      _buildHeadingText("Leave Type*"),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildApplyLeaveDialogBox(),
                      _buildLeaveTypeDialogBox()
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [_buildHeadingText("From Date"),_buildHeadingText("To Date"),],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ _buildFromDate(), _buildToDate()],
                  ),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _buildHeadingText("Days   :-"),
                          if(leaveCode == "SH")_buildText(difference = "0"),
                          if(leaveCode == "EL" || leaveCode == "PR" || leaveCode == "WO" || leaveCode == "AB" || leaveCode == "FO" || leaveCode == "OD" || leaveCode == "AL" || leaveCode == "CO" ||leaveCode == "RG" ||
                              leaveCode == "HO" || leaveCode == "NH" || leaveCode == "EM" || leaveCode =="GL" || leaveCode == "CP" || leaveCode == "ML" ||  leaveCode == "LW" || leaveCode == "SL" ||
                              leaveCode == "CL" || leaveCode =="MG" || leaveCode == "PT"
                          )
                            _buildText(difference.toString()),
                        ],
                      ),
                      Row(
                        children: [
                          _buildHeadingText("Balance :-"),
                          _buildText(balanceLeave ?? "0")
                        ],
                      )
                    ],
                  ),


                  _buildHeadingText("Applied To"),

                  _buildAppliedTo(),


                  const SizedBox(height: 10,),

                  _buildHeadingText("CC To"),

                  _buildCCToDialogBox(),


                  _buildHeadingText("Reason*"),

                  _buildTextField(),

                  _buildElevatedbutton()
                ],
              ),
            ),
          ),
        ),
      ));
  }

  _buildHeadingText(String title) {
    return Padding(
      padding: EdgeInsets.all(10.0.dw),
      child: Text(
        title,
        style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w500),
      ),
    );
  }

  _buildApplyLeaveDialogBox() {
    return Expanded(
      flex:4,
      child: InkWell(
        onTap: () async {
           _showApplyLeaveDialogue();
           disposeValues();
        },
        child: Padding(
          padding: EdgeInsets.all(10.0.dw),
          child: Material(
           // color: Colors.grey.shade300,
            color: AppColors.pastlegreybule,
              elevation: 5,
              borderRadius: BorderRadius.circular(5.0.dw),
              child: Padding(
                padding: EdgeInsets.all(12.dw),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(applyLeave ?? "Apply"),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Future<void> _showApplyLeaveDialogue() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView()
            ),
          );
        }) ??
        false;
  }

  _buildLeaveTypeDialogBox() {
    return Expanded(
      flex: 4,
      child: InkWell(
        onTap: () async {
          _showLeaveType();
        },
        child: Padding(
          padding: EdgeInsets.all(10.0.dw),
          child: Material(
              elevation: 5,
             // color: Colors.grey.shade300,
              color: AppColors.pastlegreybule,
              borderRadius: BorderRadius.circular(5.0.dw),
              child: Padding(
                padding: EdgeInsets.all(12.dw),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(leavetype ?? "Leave Type"),
                    const Icon(Icons.arrow_drop_down_outlined)
                  ],
                ),
              )),
        ),
      ),
    );
  }

  Future<void> _showLeaveType() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 200.dh,
              child: ListView()
            ),
          );
        }) ??
        false;
  }



  Widget _buildFromDate() {
    return Padding(
      padding: EdgeInsets.all(8.dh),
      child: Column(
        children: [
          Material(
            color: AppColors.pastlegreybule,
            borderRadius: BorderRadius.circular(5.dw),
            elevation: 5,
            child: Container(
                padding: EdgeInsets.all(8.dw),
                height: 50.dh,
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.dw),
                    color: AppColors.pastlegreybule),
                child: InkWell(
                  onTap: () {
                    if (controlCode != null && leavetype != null) {
                      showDateRangePicker(
                          context: context,
                          builder: (context, child) {
                            return Theme(
                              data: Theme.of(context).copyWith(
                                colorScheme: const ColorScheme.light(
                                  primary: Colors.blue,
                                  onPrimary: Colors.white,
                                  onSurface: Colors.black,
                                ),
                                textButtonTheme: TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white, backgroundColor: AppColors.brown,
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.black),
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                          helpText: 'Select Date',
                          initialEntryMode: DatePickerEntryMode.calendarOnly,
                          firstDate: DateTime.now().subtract(const Duration(days: 90)),
                          lastDate: DateTime.now().add(const Duration(days: 365)),
                          errorFormatText: "Invalid Format",
                          errorInvalidRangeText: "Invalid Range",
                          fieldStartHintText: "Start Date",
                          fieldEndHintText: "End Date")
                          .then((pickedDate) {
                        if (pickedDate == null) {
                          return;
                        }
                        setState(() {
                          dateTimeRange = pickedDate;
                          if (controlCode == "3") {
                            difference = pickedDate.end.difference(pickedDate.start).inDays + 1;
                            fromDate = DateFormat('dd-MM-yyyy').format(pickedDate.start);
                            toDate = DateFormat('dd-MM-yyyy').format(pickedDate.end);
                          } else if (controlCode == "1" || controlCode == "2") {
                            difference = "0.5";
                            fromDate = DateFormat('dd-MM-yyyy').format(pickedDate.start);
                            toDate = fromDate;
                          }
                          setState(() {});
                        });
                      });
                    } else {
                      (ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              "Please select apply leave for and leave type."))));
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/from_date.png",
                        scale: 2.dw,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.dw),
                        child: Text(fromDate.toString()),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }

  _buildToDate() {
    return Padding(
      padding: EdgeInsets.all(8.dh),
      child: Column(
        children: [
          Material(
            elevation: 5,
            color: AppColors.pastlegreybule,
            borderRadius: BorderRadius.circular(5.dw),
            child: Container(
              padding: EdgeInsets.all(8.dw),
              height: 50.dh,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(5.dw),
                  color: AppColors.pastlegreybule
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/from_date.png",
                    scale: 2.dw,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.dw),
                    child: Text(controlCode == "1" || controlCode == "2"
                        ? fromDate.toString()
                        : toDate.toString()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildText(String title) {
    return Padding(
      padding: EdgeInsets.all(8.dw),
      child: Text(
        title,
        style: TextStyle(fontSize: 16.dw, fontWeight: FontWeight.w400),
      ),
    );
  }

  _buildCCToDialogBox() {
    return InkWell(
      onTap: () async {
        _showCCToDialogue();
      },
      child: Padding(
        padding: EdgeInsets.all(8.0.dw),
        child: Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(5.0.dw),
            color: AppColors.pastlegreybule,
            child: Padding(
              padding: EdgeInsets.all(15.dw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(ccTo ?? "CC To"),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            )),
      ),
    );
  }

  Future<void> _showCCToDialogue() async {
   // final listNotifier = SearchableListNotifier(model.cc_list);
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: SizedBox(
              width: ScreenSizeConfig.getFullWidth,
              height: 400.dh,

            ),
          );
        }) ??
        false;
  }

  _buildTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 8.dw, right: 8.dw),
      child: TextField(
        controller: reasonTextController,
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.all(15.dw),
            hintText: "Reason",
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none
            )
          ),
          fillColor: AppColors.pastlegreybule,
          filled: true,

        ),
      ),
    );
  }

  _buildAppliedTo(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Material(
        color: AppColors.pastlegreybule,
        borderRadius: BorderRadius.circular(5.dw),
        elevation: 5,
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 5.dw,vertical: 3.dw),
          decoration: BoxDecoration(
              color: AppColors.pastlegreybule,
              borderRadius: BorderRadius.circular(5.dw)
          ),
          child:_buildText("Anurag Pandey - ( SWE269 )"),

        ),
      ),
    );
  }

  _buildElevatedbutton() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0.dw),
        child:  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.red),
                    onPressed: () {
                      if (fromDate == null && toDate == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Please Select Dates")));
                        return;
                      }

                    //  _applyLeave();
                    },
                    child: const Text("Submit",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),)

      ),
    ));
  }
}
