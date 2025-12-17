import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/model/rectification_list_model.dart';
import 'package:goerp/pages/submit_handover_bloc.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:intl/intl.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'package:provider/provider.dart';

import '../bloc/rectification_list_bloc.dart';
import '../bloc/rectified_by_bloc.dart';
import '../model/rectified_by_model.dart';
import '../service/breakdown_service.dart';
import '../state/rectification_list_state.dart';
import '../state/rectified_by_state.dart';
import '../state/submit_complaint_state.dart'; // your existing AppTopBar

class MachineHandoverPage extends StatefulWidget {
  const MachineHandoverPage({Key? key}) : super(key: key);

  @override
  State<MachineHandoverPage> createState() => _MachineHandoverPageState();
}

class _MachineHandoverPageState extends State<MachineHandoverPage> {
  final TextEditingController breakdownDateController = TextEditingController();
  final TextEditingController handoverDateController = TextEditingController();
  final TextEditingController remarksController = TextEditingController();
  ValueNotifier<String> machineName = ValueNotifier("Select Complaint no or machine");
  ValueNotifier<String> compNo = ValueNotifier("Complaint No");
  ValueNotifier<String> details = ValueNotifier("Breakdown Details");
  ValueNotifier<String> breakDateTime = ValueNotifier("Breakdown Date & Time");
  ValueNotifier<String> unitCode = ValueNotifier("Unit Code");
  ValueNotifier<String> rectifyByName = ValueNotifier("Accepted By");
  ValueNotifier<String> rectifyByNo = ValueNotifier("");

  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<List<RectifiedByModel>> _filteredMachines1 = ValueNotifier([]);
  late int compId;
  final ValueNotifier<List<RectificationListModel>> _filteredMachines = ValueNotifier([]);
  late final BreakdownService breakdownService;
  late final RectificationListBloc rectificationListBloc;
  late RectifiedByBloc rectifiedByBloc;
  late SubmitHandoverBloc submitHandoverBloc;
  String selectedStatus = "Rectified";


  String? status;
  String? hoverDtTm;
  String? acceptedByName;
  String? remark;


  @override
  void initState() {
    super.initState();
    // Set default Complaint Date & Time as current
    breakdownService = Provider.of<BreakdownService>(context, listen: false);
    rectificationListBloc = RectificationListBloc(breakdownService);
    rectificationListBloc.init("","RFC");
    rectifiedByBloc = RectifiedByBloc(breakdownService);
    rectifiedByBloc.init();
    submitHandoverBloc = SubmitHandoverBloc(breakdownService);

  }

  @override
  void dispose() {
    breakdownDateController.dispose();
    handoverDateController.dispose();
    remarksController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppTopBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: ListView(
          children: [
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: const Color(0xFFF8EDEB),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const Text(
                "Machine Handover",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF1E3A5F)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 25),
            // Grey non-editable fields (from API)
            InkWell(
              onTap: (){
                // _showUnitDialogue();
                _buildMachineCodeDialog();
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: 50.dh,
                padding: EdgeInsets.all(10.dw),
                margin: EdgeInsets.only(bottom: 10.dw),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1.dw,color: Colors.grey.shade300)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ValueListenableBuilder<String>(
                      valueListenable: machineName,
                      builder: (context, value, child) => Text(
                        machineName.value,
                        style: TextStyle(
                            color:  Colors.black,fontSize: 15.dw),
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ),
            labeledField("Unit Code", _buildFilledTextfield(unitCode)),
            labeledField("Complaint No", _buildFilledTextfield(compNo)),
            labeledField("Breakdown Details", _buildFilledTextfield(details)),
            labeledField("Breakdown Date & Time", _buildFilledTextfield(breakDateTime)),
          status == "CLS"
              ? labeledField(
            "Handover Date & Time",
            _buildGreyField(hoverDtTm ?? ""),
          )
              : const SizedBox(),
            status == "CLS"
                ? labeledField(
              "Accepted By",
              _buildGreyField(acceptedByName ?? ""),
            )
                : const SizedBox(),
            status == "CLS"
                ? labeledField(
              "Remark",
              _buildGreyField(remark ?? ""),
            )
                : const SizedBox(),
          //  status == "CLS" ?labeledField("Accepted By", _buildGreyField(acceptedByName!)) : SizedBox(),
          //  status == "CLS" ?labeledField("Remark", _buildGreyField(remark!)) : SizedBox(),
            // _buildGreyField("Complaint No.", "CMP5678"),
            // _buildGreyField("Machine", "Injection Molding Machine"),
            // _buildGreyField("BreakDown Detail", "Motor overheated and tripped."),
            // _buildGreyField("BreakDown Date & Time", "11-11-2025 10:30 AM"),

           // const SizedBox(height: 10),

            // Editable fields
            status == "CLS" ? SizedBox() :TextField(
              controller: handoverDateController,
              readOnly: true,
              decoration: editableDecoration("Handover Date & Time"),
              onTap: () => _pickDateTime(handoverDateController),
            ),
            const SizedBox(height: 10),

            status == "CLS" ? SizedBox() :InkWell(
              onTap: (){
                // _showUnitDialogue();
                _buildRectifyByDialog();
              },
              child: Container(
                alignment: Alignment.centerLeft,
                height: 50.dh,
                padding: EdgeInsets.all(10.dw),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1.dw,color: Colors.grey.shade300)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ValueListenableBuilder<String>(
                      valueListenable: rectifyByName,
                      builder: (context, value, child) => Text(
                        rectifyByName.value,
                        style: TextStyle(
                            color:  Colors.black,fontSize: 15.dw),
                      ),
                    ),
                    const Icon(Icons.arrow_drop_down)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),

            status == "CLS" ? SizedBox() :  TextField(
              controller: remarksController,
              decoration: editableDecoration("Remarks"),
            ),
            const SizedBox(height: 40),

            // SAVE BUTTON
            status == "CLS" ? SizedBox() : buildSubmitContainer()


          ],
        ),
      ),
    );
  }

  Widget labeledField(String label, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        const SizedBox(height: 3),
        child,
        const SizedBox(height: 14),
      ],
    );
  }

  _buildFilledTextfield(ValueListenable<String> name){
    return Container(
      alignment: Alignment.centerLeft,
      height: 50.dh,
     // margin: EdgeInsets.only(bottom: 0.dw),
      padding: EdgeInsets.all(10.dw),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F3F3),
          borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ValueListenableBuilder<String>(
            valueListenable: name,
            builder: (context, value, child) => Text(
              name.value,
              style: TextStyle(
                  color:  Colors.black,fontSize: 15.dw),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildGreyField( String value) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F3F3),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Text(
        value,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
  Future _buildRectifyByDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          titlePadding: EdgeInsets.symmetric(horizontal: 20.dw, vertical: 5.dh),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.dw, vertical: 5.dh),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Select or search Employee",
                  style: TextStyle(
                      fontSize: 18.dw, fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10.dh),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search here...",
                  hintStyle: TextStyle(fontSize: 14.dw),
                  prefixIcon: Icon(Icons.search, color: Colors.black, size: 22.dw),
                ),
                onChanged: (query) {
                  final names = rectifiedByBloc.state.whenOrNull(
                    success: (list) => list,
                    content: (list) => list,
                  ) ?? [];
                  _filteredMachines1.value = names
                      .where((machine) =>
                      machine.name.toLowerCase().contains(query.toLowerCase()))
                      .toList();
                },
              ),
            ],
          ),
          content: _buildRectifyByBody(),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Close",
                  style: TextStyle(color: Colors.black, fontSize: 18.dw),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _buildRectifyByBody() {
    return BlocConsumer<RectifiedByBloc, RectifiedByState>(
      bloc: rectifiedByBloc,
      listener: (_, state) {
        state.maybeWhen(
          success: (machines) {
            _filteredMachines1.value = machines;
          },
          content: (machines) {
            _filteredMachines1.value = machines;
          },
          orElse: () {},
        );
      },
      builder: (_, state) {
        return state.when(
          loading: _buildRectifyByLoading,
          content: _buildRectifyByContent,
          success: _buildRectifyByContent,
          failed: (form, __) => _buildRectifyByContent(form),
        );
      },
    );
  }

  Widget _buildRectifyByLoading(List<RectifiedByModel> model){
    return const Center(child: CircularProgressIndicator(),);
  }

  Widget _buildRectifyByContent(List<RectifiedByModel> model) {
    // initialize filtered list only once
    _filteredMachines1.value = model;

    return ValueListenableBuilder<List<RectifiedByModel>>(
      valueListenable: _filteredMachines1,
      builder: (context, filteredList, _) {
        return SizedBox(
          width: ScreenSizeConfig.getFullWidth,
          child: filteredList.isEmpty
              ? const Center(child: Text("No machines found"))
              : ListView.builder(
              itemCount: filteredList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final machine = filteredList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        rectifyByName.value = machine.name;
                        rectifyByNo.value = machine.number;
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5.0.dw),
                        child: Text("${machine.name}(${machine.number})", style: TextStyle(fontSize: 15.dw)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0.dw),
                      child: Divider(
                        height: 0.8.dh,
                        thickness: 1.dw,
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              }),
        );
      },
    );
  }

  _buildMachineListBody() {
    return BlocConsumer<RectificationListBloc, RectificationListState>(
      bloc: rectificationListBloc,
      listener: (_, state) {
        state.maybeWhen(
          success: (machines) {
            _filteredMachines.value = machines;
          },
          content: (machines) {
            _filteredMachines.value = machines;
          },
          orElse: () {},
        );
      },
      builder: (_, state) {
        return state.when(
          loading: _buildMachineCodeLoading,
          content: _buildMachineListContent,
          success: _buildMachineListContent,
          failed: (form, __) => _buildMachineListContent(form),
        );
      },
    );
  }

  Widget _buildMachineCodeLoading(List<RectificationListModel> model){
    return const Center(child: CircularProgressIndicator(),);
  }

  Widget _buildMachineListContent(List<RectificationListModel> model) {
    // initialize filtered list only once
    _filteredMachines.value = model;

    return ValueListenableBuilder<List<RectificationListModel>>(
      valueListenable: _filteredMachines,
      builder: (context, filteredList, _) {
        return SizedBox(
          width: ScreenSizeConfig.getFullWidth,
          child: filteredList.isEmpty
              ? const Center(child: Text("No machines found"))
              : ListView.builder(
              itemCount: filteredList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final machine = filteredList[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                       setState(() {
                         machineName.value = machine.machineName;
                         compNo.value = machine.complainNo;
                         details.value = machine.breakdownDetails;
                         breakDateTime.value = machine.breakdownDtTm;
                         unitCode.value = machine.unitCode;
                         compId = machine.compId;
                         status = machine.status;
                         hoverDtTm = machine.handoverDtTm;
                         acceptedByName = machine.acceptedByName;
                         remark = machine.handoverRemark;
                         Navigator.pop(context);
                       });
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5.0.dw),
                        child: Text("${machine.complainNo}-${machine.machineName}", style: TextStyle(fontSize: 15.dw)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0.dw),
                      child: Divider(
                        height: 0.8.dh,
                        thickness: 1.dw,
                        color: Colors.grey,
                      ),
                    )
                  ],
                );
              }),
        );
      },
    );
  }


  Future _buildMachineCodeDialog() {
    // default selected

    return showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              titlePadding: EdgeInsets.symmetric(horizontal: 20.dw, vertical: 5.dh),
              contentPadding: EdgeInsets.symmetric(horizontal: 20.dw, vertical: 5.dh),

              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Select or search Machine",
                      style: TextStyle(
                          fontSize: 18.dw,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ),

                  SizedBox(height: 10.dh),

                  /// -------------------------------
                  ///   RADIO BUTTONS (NEW PART)
                  /// -------------------------------
                  Row(
                    children: [
                      Radio<String>(
                        value: "Rectified",
                        groupValue: selectedStatus,
                        onChanged: (value) {
                          setState(() {
                            selectedStatus = value!;
                          });

                          // Call API
                          rectificationListBloc.init("", "RFC");
                        },
                      ),
                      const Text("Rectified",style: TextStyle(fontSize: 14),),

                      const SizedBox(width: 10),

                      Radio<String>(
                        value: "CLS",
                        groupValue: selectedStatus,
                        onChanged: (value) {
                          setState(() {
                            selectedStatus = value!;
                          });

                          // Call API
                          rectificationListBloc.init("", "CLS");
                        },
                      ),
                      const Text("Closed",style: TextStyle(fontSize: 14),),
                    ],
                  ),

                  SizedBox(height: 10.dh),

                  /// SEARCH BOX
                  TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: "Search here...",
                      hintStyle: TextStyle(fontSize: 14.dw),
                      prefixIcon: Icon(Icons.search, color: Colors.black, size: 22.dw),
                    ),
                    onChanged: (query) {
                      final machines = rectificationListBloc.state.whenOrNull(
                        success: (list) => list,
                        content: (list) => list,
                      ) ?? [];

                      _filteredMachines.value = machines.where((machine) {
                        return machine.complainNo
                            .toLowerCase()
                            .contains(query.toLowerCase()) ||
                            machine.machineName
                                .toLowerCase()
                                .contains(query.toLowerCase());
                      }).toList();
                    },
                  ),
                ],
              ),

              content: _buildMachineListBody(),

              actions: [
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "Close",
                      style: TextStyle(color: Colors.black, fontSize: 18.dw),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }


  Widget buildSubmitContainer() {
    return BlocConsumer<SubmitHandoverBloc, SubmitComplaintState>(
        bloc: submitHandoverBloc,
        listener: (_, state) {
          state.maybeWhen(
              success: (_, message) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message ?? "Something")));

                Navigator.pop(context);
              },
              failed: (_, message) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message)));
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeWhen(loading: (_) {
            return  const Center(child: CircularProgressIndicator());
          }, orElse: () {
            return  InkWell(
              onTap: () async {

                await submitHandoverBloc.init(
                    compNo.value,
                    compId,
                    handoverDateController.text,
                    remarksController.text,
                    rectifyByNo.value);
              },
              child:  Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 45,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [ Color(0xFF007BFF),Color(0xFF002D72),], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Center(
                  child: Text("SAVE RECORD", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              )
            );



          });
        });


  }


  Future<void> _pickDateTime(TextEditingController controller) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
    );

    if (pickedDate != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        final fullDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );
        controller.text = DateFormat('yyyy-MM-dd HH:mm:ss').format(fullDateTime);
      }
    }
  }

  InputDecoration editableDecoration(String hint) => InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(color: Colors.black87, fontSize: 16),
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFBDBDBD), width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFF1976D2), width: 1.3),
    ),
  );
}
