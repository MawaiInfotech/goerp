import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/bloc/break_reason_bloc.dart';
import 'package:goerp/bloc/breakdown_details_bloc.dart';
import 'package:goerp/bloc/rect_details_bloc.dart';
import 'package:goerp/bloc/rectified_by_bloc.dart';
import 'package:goerp/bloc/submit_break_details_bloc.dart';
import 'package:goerp/bloc/submit_traget_details_bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/model/break_reason_model.dart';
import 'package:goerp/model/breakdown_details_model.dart';
import 'package:goerp/model/rectified_by_model.dart';
import 'package:goerp/model/spare_code_model.dart';
import 'package:goerp/service/breakdown_service.dart';
import 'package:goerp/state/break_reason_state.dart';
import 'package:goerp/state/breakdown_details_state.dart';
import 'package:goerp/state/rect_details_state.dart';
import 'package:goerp/state/rectified_by_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:intl/intl.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';

import '../model/rect_details_model.dart';
import '../state/submit_complaint_state.dart';

class RectificationDetailPage extends StatefulWidget {
  const RectificationDetailPage({
    Key? key,
    required this.unitCode,
    required this.unitName,
    required this.complaintNo,
    required this.machineCode,
    required this.machineName,
    required this.details,
    required this.dateTime,
    required this.compId,
    required this.status,
    required this.targetDtTm,
    required this.remarkTarget,
    required this. image
  }) : super(key: key);

  final String unitCode;
  final String unitName;
  final String complaintNo;
  final String machineCode;
  final String machineName;
  final String details;
  final String dateTime;
  final int compId;
  final String status;
  final String targetDtTm;
  final String remarkTarget;
  final String image;

  @override
  State<RectificationDetailPage> createState() => _RectificationDetailPageState();
}

class _RectificationDetailPageState extends State<RectificationDetailPage> {
  int _selectedTab = 0;
  String? _targetDateTime;
  String? _entryDateTime;
  String? _rectificationDateTime;
  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<List<BreakReasonModel>> _filteredMachines = ValueNotifier([]);
  final ValueNotifier<List<RectifiedByModel>> _filteredMachines1 = ValueNotifier([]);
  final TextEditingController _targetRemarkController = TextEditingController();
  final TextEditingController _rectificationRemarkController = TextEditingController();
  final TextEditingController _breakdownReasonController = TextEditingController();
  final TextEditingController _actionTakenController = TextEditingController();
  ValueNotifier<String> rectTypeName = ValueNotifier("Rectification Type");
  ValueNotifier<String> rectTypeCode = ValueNotifier("");
  ValueNotifier<String> rectifyByName = ValueNotifier("Rectified By");
  ValueNotifier<String> rectifyByNo = ValueNotifier("");
  ValueNotifier<String> breakTypeName = ValueNotifier("Breakdown Type");
  ValueNotifier<String> breakTypeCode = ValueNotifier("");
  ValueNotifier<String> breakReasonName = ValueNotifier("Reason");
  ValueNotifier<String> breakReasonCode = ValueNotifier("");
  ValueNotifier<String> spareCode = ValueNotifier("");
  ValueNotifier<String> spareName = ValueNotifier("Spare Code");
  ValueNotifier<String> itemType = ValueNotifier("Item type");

  late BreakdownService breakdownService;
  late SubmitTargetDetailsBloc submitTargetDetailsBloc;
  late BreakdownDetailsBloc breakdownDetailsBloc;
  late BreakReasonBloc breakReasonBloc;
  late RectifiedByBloc rectifiedByBloc;
  late SubmitBreakDetailsBloc submitBreakDetailsBloc;
  late RectDetailsBloc rectDetailsBloc;

  // store saved breakdown reasons here (printed / used later)
  List<Map<String, dynamic>> savedBreakdownReasons = [];
  List<Map<String, dynamic>> sparePartList = [];

  String getCurrentDateTime() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
  }

  @override
  void initState() {
    super.initState();
    breakdownService = Provider.of<BreakdownService>(context, listen: false);
    submitTargetDetailsBloc = SubmitTargetDetailsBloc(breakdownService);
    submitBreakDetailsBloc = SubmitBreakDetailsBloc(breakdownService);
    breakdownDetailsBloc = BreakdownDetailsBloc(breakdownService);
    breakdownDetailsBloc.init();
    rectifiedByBloc = RectifiedByBloc(breakdownService);
    rectifiedByBloc.init();
    breakReasonBloc = BreakReasonBloc(breakdownService);
    _entryDateTime = getCurrentDateTime();
    rectDetailsBloc = RectDetailsBloc(breakdownService);
    widget.status == "ACK" ?null : rectDetailsBloc.init(widget.compId.toString());
    // print(widget.status);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _targetRemarkController.dispose();
    _rectificationRemarkController.dispose();
    _filteredMachines.dispose();
    rectTypeName.dispose();
    rectTypeCode.dispose();
    breakTypeName.dispose();
    breakTypeCode.dispose();
    breakReasonName.dispose();
    breakReasonCode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppTopBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFFF8EDEB),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const Text(
                "BreakDown Rectification",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF1E3A5F)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  _tabButton("TARGET DETAIL", 0),
                  _tabButton(
                    "RECTIFICATION DETAIL",
                    1,
                    isDisabled: widget.status == "OPN",
                  ),
                ],
              ),

            ),
            const SizedBox(height: 25),
            _selectedTab == 0 ? _buildTargetDetail() : widget.status == "ACK" ? _buildRectificationDetailsBody(): _buildRectDetailsBody(),
          ],
        ),
      ),
    );
  }

  Expanded _tabButton(String text, int index, {bool isDisabled = false}) {
    final isSelected = _selectedTab == index;

    return Expanded(
      child: GestureDetector(
        onTap: isDisabled
            ? null
            : () => setState(() => _selectedTab = index),
        child: Opacity(
          opacity: isDisabled ? 0.4 : 1.0,
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              gradient: isSelected
                  ? const LinearGradient(
                  colors: [Color(0xFF002D72), Color(0xFF007BFF)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)
                  : null,
              color: isSelected ? null : const Color(0xFFEFEFEF),
              borderRadius: index == 0
                  ? const BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              )
                  : const BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildTargetDetail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _greyField("${widget.unitCode} - ${widget.unitName}"),
          _greyField(widget.complaintNo),
          _greyField(widget.machineName),
          _greyField(widget.details),
          _greyField(widget.dateTime),
          _whiteField(hint:widget.status == "OPN" ?"Target Entry Date & Time": widget.targetDtTm, value:widget.status == "OPN" ? _targetDateTime:widget.targetDtTm, onTap: _pickTargetDateTime),
          _whiteField(hint:widget.status == "OPN" ?"Remarks": widget.remarkTarget , controller: _targetRemarkController),
          InkWell(
            onTap: () async { await _buildFullImage(widget.image);},
              child:
              Image.network(
                widget.image,
                height: 50,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.broken_image, size: 50, color: Colors.red);
                },
              )


          ),
          const SizedBox(height: 30),
          widget.status == "OPN" ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // _roundedButton("BACK", Colors.grey.shade800, Colors.white),
              buildSubmitContainer(),
            ],
          ): const SizedBox(),
        ],
      ),
    );
  }
  _buildFullImage(String img) {
    return showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          titlePadding: EdgeInsets.all(0.dw),
          contentPadding: EdgeInsets.all(20.dw),
          insetPadding: EdgeInsets.all(20.dw),
          title: Container(
            alignment: Alignment.topRight,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close)),
          ),
          content: SizedBox(
              width: double.maxFinite,
              child: PhotoView(
                imageProvider: NetworkImage(img),
                errorBuilder: (context, error, stack) =>
                    const Center(child: Text("Image failed to load")),
                loadingBuilder: (context, event) =>
                const Center(child: CircularProgressIndicator()),
              )
          ),
        ));
  }
  Widget buildSubmitContainer() {
    return BlocConsumer<SubmitTargetDetailsBloc, SubmitComplaintState>(
      bloc: submitTargetDetailsBloc,
      listener: (_, state) {
        state.maybeWhen(success: (_, message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message ?? "Something")));
          Navigator.pop(context, "refresh");

        }, failed: (_, message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        }, orElse: () {});
      },
      builder: (context, state) {
        return state.maybeWhen(loading: (_) {
          return const Center(child: CircularProgressIndicator());
        }, orElse: () {
          return InkWell(
            onTap: () async {
              // simple validation
              if (_targetDateTime == null) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please pick target date/time")));
                return;
              }
              await submitTargetDetailsBloc.init(widget.complaintNo, _targetDateTime!, _targetRemarkController.text, widget.unitCode, widget.compId);
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF3d8ad8), Color(0xFF003060)]),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Save Record',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          );
        });
      },
    );
  }

  _buildRectificationDetailsBody() {
    return BlocConsumer<BreakdownDetailsBloc, BreakdownDetailsState>(
      bloc: breakdownDetailsBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildRectificationDetailsLoading,
            content: _buildRectificationDetailsContent,
            success: _buildRectificationDetailsContent,
            failed: (form, __) => _buildRectificationDetailsContent(form));
      },
    );
  }

  Widget _buildRectificationDetailsLoading(BreakdownDetailsModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildRectificationDetailsContent(BreakdownDetailsModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              _buildRectificationTypeModel(model);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              height: 50,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.0), border: Border.all(width: 1, color: Colors.grey.shade300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ValueListenableBuilder<String>(
                    valueListenable: rectTypeName,
                    builder: (context, value, child) => Text(
                      rectTypeName.value,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  const Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          _greyField(_entryDateTime!),
          _whiteField(hint: "Rectification Date & Time", value: _rectificationDateTime, onTap: _pickRectificationDateTime),
          InkWell(
            onTap: (){
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
          const SizedBox(height: 10),
          _whiteField(hint: "BreakDown Reason",controller: _breakdownReasonController),
          _whiteField(hint: "Action Taken",controller: _actionTakenController),
          _whiteField(hint: "Remarks", controller: _rectificationRemarkController),
          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    // open breakdown reason dialog and wait for result
                    final result = await _openBreakdownReasonDialog(model);
                    if (result != null) {
                      // store locally and print
                      setState(() {
                        savedBreakdownReasons = result;
                      });
                      // debug print
                      // ignore: avoid_print
                      print("Saved BreakDown Reasons: $result");
                    }
                  },
                  child: _gradientButton("BreakDown Reason"),
                ),
              ),
              Expanded(child: GestureDetector(onTap: () async {
                final result = await openSpareEntryDialog(model);

                if (result != null) {
                  setState(() {
                    sparePartList = result;
                  });
                }

              }, child: _gradientButton("Spare Part"))),
            ],
          ),
          const SizedBox(height: 30),
          buildSubmitBreakDownDetailsContainer()
        ],
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

  Future<void> _buildRectificationTypeModel(BreakdownDetailsModel model) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Select Rectification Type",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
            ],
          ),
          content: SizedBox(
            width: ScreenSizeConfig.getFullWidth,
            child: ListView.builder(
              itemCount: model.recti_type.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        rectTypeName.value = model.recti_type[index].meaning;
                        rectTypeCode.value = model.recti_type[index].controlCode;
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Text(model.recti_type[index].meaning, style: const TextStyle(fontSize: 15)),
                      ),
                    ),
                    const Divider(height: 0.8, thickness: 1, color: Colors.grey),
                  ],
                );
              },
            ),
          ),
          actionsPadding: const EdgeInsets.symmetric(vertical: 0),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("close", style: TextStyle(color: Colors.black, fontSize: 16)),
              ),
            ),
          ],
        );
      },
    );
  }

  // ======= BREAKDOWN REASON DIALOG (returns List<Map<String, dynamic>>?) =======
  Future<List<Map<String, dynamic>>?> _openBreakdownReasonDialog(BreakdownDetailsModel model) {
    List<Map<String, dynamic>> rows = [
      {"type": null, "typeName": null, "reason": null, "reasonName": null, "remarks": ""},
    ];

    return showDialog<List<Map<String, dynamic>>>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          final width = MediaQuery.of(context).size.width;
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            content: Container(
              width: width,
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.60,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          "BreakDown Reason",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // header
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        color: Colors.blueGrey.shade50,
                        child: const Row(
                          children: [
                            Expanded(flex: 1, child: Text("S.N", textAlign: TextAlign.center)),
                            Expanded(flex: 3, child: Text("Type", textAlign: TextAlign.center)),
                            Expanded(flex: 3, child: Text("Reason", textAlign: TextAlign.center)),
                            Expanded(flex: 3, child: Text("Remarks", textAlign: TextAlign.center)),
                            Expanded(flex: 1, child: Text("Del", textAlign: TextAlign.center)),
                          ],
                        ),
                      ),

                      const SizedBox(height: 8),

                      // rows
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: rows.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                // SN
                                Expanded(
                                  flex: 1,
                                  child: Center(child: Text("${index + 1}")),
                                ),

                                // TYPE
                                Expanded(
                                  flex: 3,
                                  child: InkWell(
                                    onTap: () async {
                                      // open type selection dialog - this sets breakTypeName & breakTypeCode
                                      await _buildBreakTypeModel(model);
                                      // after user selects type, update this row's type
                                      setState(() {
                                        rows[index]['type'] = breakTypeCode.value.isNotEmpty ? breakTypeCode.value : null;
                                        rows[index]['typeName'] = breakTypeName.value != "Breakdown Type" ? breakTypeName.value : null;
                                        // clear reason related fields for this row
                                        rows[index]['reason'] = null;
                                        rows[index]['reasonName'] = null;
                                        breakReasonName.value = "Reason";
                                        breakReasonCode.value = "";
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(color: Colors.grey.shade300),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              rows[index]['typeName'] ?? "Select",
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(color: Colors.black,fontSize: 11),
                                            ),
                                          ),
                                          const Icon(Icons.arrow_drop_down),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),

                                // REASON
                                Expanded(
                                  flex: 3,
                                  child: InkWell(
                                    onTap: () async {
                                      // ensure a type is selected first
                                      if (rows[index]['type'] == null) {
                                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Please select Breakdown Type first")));
                                        return;
                                      }

                                      // call the reason dialog (it reads breakTypeCode and populates breakReasonBloc accordingly)
                                      await _buildReasonDialog();
                                      // after user selects reason, update this row
                                      setState(() {
                                        rows[index]['reason'] = breakReasonCode.value.isNotEmpty ? breakReasonCode.value : null;
                                        rows[index]['reasonName'] = breakReasonName.value != "Reason" ? breakReasonName.value : null;
                                      });
                                    },
                                    child: Container(
                                      height: 50,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(color: Colors.grey.shade300),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              rows[index]['reasonName'] ?? "Select",
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(color: Colors.black,fontSize: 10),
                                            ),
                                          ),
                                          const Icon(Icons.arrow_drop_down),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 5),

                                // REMARKS
                                Expanded(
                                  flex: 3,
                                  child: TextFormField(

                                    initialValue: rows[index]['remarks'],
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                                      border: OutlineInputBorder(),
                                      hintText: "Remarks",
                                    ),
                                    onChanged: (val) => rows[index]["remarks"] = val,
                                  ),
                                ),

                                const SizedBox(width: 5),

                                // DELETE
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(Icons.delete, color: Colors.red),
                                    onPressed: () {
                                      if (rows.length > 1) {
                                        setState(() => rows.removeAt(index));
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      // add button
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add_circle, color: Colors.green, size: 32),
                            onPressed: () {
                              setState(() {
                                rows.add({"type": null, "typeName": null, "reason": null, "reasonName": null, "remarks": ""});
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // build finalData (only include meaningful rows; you can change validation here)
                  List<Map<String, dynamic>> finalData = [];
                  for (var r in rows) {
                    finalData.add({
                      "type": r["type"],
                      "typeName": r["typeName"],
                      "reason": r["reason"],
                      "reasonName": r["reasonName"],
                      "remarks": r["remarks"],
                    });
                  }
                  Navigator.pop(context, finalData);
                },
                child: const Text("Save", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close", style: TextStyle(fontSize: 16)),
              ),
            ],
          );
        });
      },
    );
  }

  Future<void> _buildBreakTypeModel(BreakdownDetailsModel model) {
    // when user selects a break type here we also trigger breakReasonBloc.init with selected controlCode
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Select Breakdown Type",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
            ],
          ),
          content: SizedBox(
            width: ScreenSizeConfig.getFullWidth,
            child: ListView.builder(
              itemCount: model.break_type.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = model.break_type[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        breakTypeName.value = item.description;
                        breakTypeCode.value = item.controlCode;
                        // clear previous reason selections
                        breakReasonName.value = "Reason";
                        breakReasonCode.value = "";
                        // initialize breakReasonBloc for this type (so reason dialog shows filtered reasons)
                        breakReasonBloc.clear();
                        breakReasonBloc.init(breakTypeCode.value);
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Text(item.description, style: const TextStyle(fontSize: 15)),
                      ),
                    ),
                    const Divider(height: 0.8, thickness: 1, color: Colors.grey),
                  ],
                );
              },
            ),
          ),
          actionsPadding: const EdgeInsets.symmetric(vertical: 0),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("close", style: TextStyle(color: Colors.black, fontSize: 16)),
              ),
            )
          ],
        );
      },
    );
  }

  _buildReasonListBody() {
    return BlocConsumer<BreakReasonBloc, BreakReasonState>(
      bloc: breakReasonBloc,
      listener: (_, state) {
        state.maybeWhen(success: (machines) {
          _filteredMachines.value = machines;
        },
        content: (machines) {
          _filteredMachines.value = machines;
        }, orElse: () {});
      },
      builder: (_, state) {
        return state.when(
            loading: _buildMachineCodeLoading,
            content: _buildMachineListContent,
            success: _buildMachineListContent,
            failed: (form, __) => _buildMachineListContent(form));
      },
    );
  }

  Widget _buildMachineCodeLoading(List<BreakReasonModel> model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildMachineListContent(List<BreakReasonModel> model) {
    // initialize filtered list only once (but avoid resetting on every rebuild if not necessary)
    _filteredMachines.value = model;

    return ValueListenableBuilder<List<BreakReasonModel>>(
      valueListenable: _filteredMachines,
      builder: (context, filteredList, _) {
        return SizedBox(
          width: ScreenSizeConfig.getFullWidth,
          child: filteredList.isEmpty
              ? const Center(child: Text("No reasons found"))
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
                        breakReasonName.value = machine.description;
                        breakReasonCode.value = machine.code;
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Text(machine.description, style: const TextStyle(fontSize: 15)),
                      ),
                    ),
                    const Divider(height: 0.8, thickness: 1, color: Colors.grey),
                  ],
                );
              }),
        );
      },
    );
  }

  Future _buildReasonDialog() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Select Reason",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: "Search here...",
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                ),
                onChanged: (query) {
                  final machines = breakReasonBloc.state.whenOrNull(success: (list) => list, content: (list) => list) ?? [];
                  _filteredMachines.value = machines.where((machine) => machine.description.toLowerCase().contains(query.toLowerCase())).toList();
                },
              ),
            ],
          ),
          content: _buildReasonListBody(),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close", style: TextStyle(color: Colors.black, fontSize: 16)),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<List<Map<String, dynamic>>?> openSpareEntryDialog(BreakdownDetailsModel model) {
    List<Map<String, dynamic>> rows = [
      {"spareName": "", "spareCode": "", "itemType": "", "noOff": "", "others": ""}

    ];

    return showDialog<List<Map<String, dynamic>>>(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          final width = MediaQuery.of(context).size.width;

          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            content: Container(
              width: width,
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.60,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          "Spare Part Entry",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Header
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        color: const Color(0xFF1D72B8),
                        child: const Row(
                          children: [
                            Expanded(flex: 3, child: Text("Spare Code", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                            Expanded(flex: 3, child: Text("Item Type", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                            Expanded(flex: 1, child: Text("No Off", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                            Expanded(flex: 2, child: Text("Remarks", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                            Expanded(flex: 1, child: Text("Action", textAlign: TextAlign.center, style: TextStyle(color: Colors.white))),
                          ],
                        ),
                      ),

                      const SizedBox(height: 8),

                      // ROWS
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: rows.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [

                                // SPARE CODE DROPDOWN
                                Expanded(
                                  flex: 3,
                                  child: InkWell(
                                    onTap: () async {
                                      await _buildSpareCodeModel(model, index);
                                      setState(() {
                                        rows[index]["spareCode"] = spareCode.value;
                                        rows[index]["spareName"] = spareName.value;
                                        rows[index]["itemType"] = itemType.value;
                                      });
                                    },

                                    child: Container(
                                      height: 50,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8.0),
                                        border: Border.all(color: Colors.grey.shade300),
                                      ),
                                      child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(rows[index]["spareName"] ?? "Spare Code",
                                          style: const TextStyle(fontSize: 11),)
                                        ),
                                        const Icon(Icons.arrow_drop_down)
                                      ],
                                    ),
                                    ),
                                  ),
                                ),

                                const SizedBox(width: 5),

                                // ITEM TYPE DROPDOWN
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 50,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(color: Colors.grey.shade300),
                                    ),
                                    child:  Text(rows[index]["itemType"] ?? "Type")

                                  ),
                                ),

                                const SizedBox(width: 5),

                                // NO OFF
                                Expanded(
                                  flex: 2,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: inputBoxDecoration(""),
                                    onChanged: (v) => rows[index]['noOff'] = v,
                                  ),
                                ),

                                const SizedBox(width: 5),

                                // OTHERS
                                Expanded(
                                  flex: 2,
                                  child: TextField(
                                    decoration: inputBoxDecoration(""),
                                    onChanged: (v) => rows[index]['others'] = v,
                                  ),
                                ),

                                const SizedBox(width: 5),

                                // DELETE BUTTON
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(Icons.close, color: Colors.red),
                                    onPressed: () {
                                      if (rows.length > 1) {
                                        setState(() => rows.removeAt(index));
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      // ADD BUTTON
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.add_circle, size: 32, color: Colors.green),
                            onPressed: () {
                              setState(() {
                                rows.add({"spareName": "", "spareCode": "", "itemType": "", "noOff": "", "others": ""}
                                );
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // SAVE - CLOSE Buttons
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, rows);
                },
                child: const Text("Save", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          );
        });
      },
    );
  }

  InputDecoration inputBoxDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300)),
    );
  }

  Future<void> _buildSpareCodeModel(BreakdownDetailsModel model, int rowIndex) {
    final listNotifier = SearchableEmployeeListNotifier(model.spare_cd);
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          titlePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Select Spare Code",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blue),
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                onChanged: listNotifier.filterBasedOn,
                decoration:   InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  hintText: "search here...",
                  hintStyle: const TextStyle(fontSize: 14),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 22,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(30.dw)
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(30.dw)
                  ),
                ),
              )
            ],
          ),
          content: ValueListenableBuilder<List<SpareCodeModel>>(
            valueListenable: listNotifier,
            builder: (context, list, widget) {
              return SizedBox(
                width: ScreenSizeConfig.getFullWidth,
                child: ListView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = list[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            spareName.value = item.description;
                            spareCode.value = item.itemCode;
                            itemType.value = item.itemType;
                            // rows[rowIndex]["spareCode"] = item.itemCode;
                            // rows[rowIndex]["itemType"] = item.itemType;
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(8),
                            child: Text(item.description, style: const TextStyle(fontSize: 15)),
                          ),
                        ),
                        const Divider(height: 0.8, thickness: 1, color: Colors.grey),
                      ],
                    );
                  },
                ),
              );
            }
          ),
          actionsPadding: const EdgeInsets.symmetric(vertical: 0),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("close", style: TextStyle(color: Colors.black, fontSize: 16)),
              ),
            )
          ],
        );
      },
    );
  }


  Widget _greyField(String value) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 14),
      decoration: BoxDecoration(color: const Color(0xFFF3F3F3), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey.shade300)),
      child: Text(value, style: const TextStyle(fontSize: 14, color: Colors.black87)),
    );
  }

  Widget _whiteField({
    required String hint,
    String? value,
    VoidCallback? onTap,
    TextEditingController? controller,
    bool readOnly = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: controller != null
            ? TextField(
          controller: controller,
          readOnly: readOnly,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle:  TextStyle(color: widget.status == "OPN" ?Colors.grey:Colors.black, fontSize: 14),
              hintText: hint),
          style: const TextStyle(fontSize: 14, color: Colors.black87),
        )
            : Text(
          value ?? hint,
          style: TextStyle(fontSize: 14, color: value == null ? Colors.black54 : Colors.black87),
        ),
      ),
    );
  }

  Widget _gradientButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 45,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFF002D72), Color(0xFF007BFF)], begin: Alignment.centerLeft, end: Alignment.centerRight),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget buildSubmitBreakDownDetailsContainer() {
    return BlocConsumer<SubmitBreakDetailsBloc, SubmitComplaintState>(
      bloc: submitBreakDetailsBloc,
      listener: (_, state) {
        state.maybeWhen(success: (_, message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message ?? "Something")));
          Navigator.pop(context, "refresh");

        }, failed: (_, message) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
        }, orElse: () {});
      },
      builder: (context, state) {
        return state.maybeWhen(loading: (_) {
          return const Center(child: CircularProgressIndicator());
        }, orElse: () {
          return InkWell(
            onTap: () async {
              // simple validation
              _saveRecord();
            },
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF3d8ad8), Color(0xFF003060)]),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Save Record',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          );
        });
      },
    );
  }

  void _saveRecord() async {
    Map<String, dynamic> finalData = {
      "emp_id": empCd,
      "unit_cd": widget.unitCode,
      "rect_types" : rectTypeCode.value,
      "comp_id": widget.compId,
      "complain_no": widget.complaintNo,
      "rectification_date":_rectificationDateTime,
      "rect_remarks": _rectificationRemarkController.text,
      "rectified_by":rectifyByNo.value,
      "breakdown_reason":_breakdownReasonController.text,
      "action_taken": _actionTakenController.text,

      // BREAKDOWN REASON LIST
      "breakdown_reasons": savedBreakdownReasons.map((e) {
        return {
          "r_o_d_type": e["type"] ?? "",
          "reason_code": e["reason"] ?? "",
          "remarks": e["remarks"] ?? "",
        };
      }).toList(),

      // SPARE PART LIST
      "spare_part": sparePartList.map((e) {
        return {
          "spare_con_co": e["spareCode"] ?? "",
          "no_off": int.tryParse(e["noOff"] ?? "0") ?? 0,
          "item_type": e["itemType"] ?? "",
          "others": e["others"] ?? "",
        };
      }).toList(),
    };

    print("FINAL JSON => $finalData");
    await submitBreakDetailsBloc.init(finalData);
  }



  Future<void> _pickTargetDateTime() async {
    final picked = await _pickDateTime();
    if (picked != null) setState(() => _targetDateTime = picked);
  }

  Future<void> _pickRectificationDateTime() async {
    final picked = await _pickDateTime();
    if (picked != null) setState(() => _rectificationDateTime = picked);
  }

  Future<String?> _pickDateTime() async {
    DateTime? date = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2020), lastDate: DateTime(2035));
    if (date == null) return null;

    TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time == null) return null;

    final combined = DateTime(date.year, date.month, date.day, time.hour, time.minute);

    return DateFormat('yyyy-MM-dd HH:mm:ss').format(combined);
  }

  _buildRectDetailsBody() {
    return BlocConsumer<RectDetailsBloc, RectDetailsState>(
      bloc: rectDetailsBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildRectDetailsLoading,
            content: _buildRectDetailsContent,
            success: _buildRectDetailsContent,
            failed: (form, __) => _buildRectDetailsContent(form));
      },
    );
  }

  Widget _buildRectDetailsLoading(RectDetailsModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildRectDetailsContent(RectDetailsModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _greyField(model.rectification!.rectif_type_name),
          _greyField(model.rectification!.rect_entry_date),
          _greyField(model.rectification!.rectification_date),
          _greyField(model.rectification!.rectified_by_name),
          _greyField(model.rectification!.breakdown_reason),
          _greyField(model.rectification!.action_taken),
          _greyField(model.rectification!.remarks),


          const SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () async {
                    // open breakdown reason dialog and wait for result
                    await _openBreakReasonDialog(model);
                  },
                  child: _gradientButton("BreakDown Reason"),
                ),
              ),
              Expanded(child: GestureDetector(onTap: () async {
                 await _openBreakSparePartDialog(model);


              }, child: _gradientButton("Spare Part"))),
            ],
          ),
          const SizedBox(height: 30),
         // buildSubmitBreakDownDetailsContainer()
        ],
      ),
    );
  }

  Future _openBreakReasonDialog(RectDetailsModel model) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          final width = MediaQuery.of(context).size.width;
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            content: Container(
              width: width,
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.40,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      /// Title
                      const Text(
                        "BreakDown Reason",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(height: 15),

                      /// HEADER ROW
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "S.N",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Type",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Reason",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Remarks",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),



                      /// TABLE ROWS
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: model.breakdown_reason.length,
                        itemBuilder: (context, index) {
                          final item = model.breakdown_reason[index];

                          /// alternating color rows
                          final rowColor = (index % 2 == 0)
                              ? Colors.grey.shade100
                              : Colors.blue.shade50;

                          return Container(
                            color: rowColor,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                /// Serial Number
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "${index + 1}",
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),

                                /// TYPE
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        item.breakdown_type_name,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),

                                /// REASON
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        item.reason_code,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),

                                /// REMARKS
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        item.remarks,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          );
        });
      },
    );
  }

  Future _openBreakSparePartDialog(RectDetailsModel model) {
    // print(widget.compId);
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          final width = MediaQuery.of(context).size.width;
          return AlertDialog(
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            content: Container(
              width: width,
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.40,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      /// Title
                      const Text(
                        "BreakDown Reason",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      const SizedBox(height: 15),

                      /// HEADER ROW
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          color: Colors.blue.shade700,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "S.N",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Spare Code",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Item Type",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "No Off",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Remarks",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),



                      /// TABLE ROWS
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: model.spare_parts.length,
                        itemBuilder: (context, index) {
                          final item = model.spare_parts[index];

                          /// alternating color rows
                          final rowColor = (index % 2 == 0)
                              ? Colors.grey.shade100
                              : Colors.blue.shade50;

                          return Container(
                            color: rowColor,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                /// Serial Number
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: Text(
                                      "${index + 1}",
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),

                                /// TYPE
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        item.spare_con_co,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),

                                /// REASON
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        item.item_type,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),

                                /// REMARKS
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        item.no_off,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                      child: Text(
                                        item.others,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            ],
          );
        });
      },
    );
  }
}

class SearchableEmployeeListNotifier extends ValueNotifier<List<SpareCodeModel>> {
  SearchableEmployeeListNotifier(super.value) {
    initialValue = value;
    //  print("INITIAL VALUE WAS $value");
  }

  late List<SpareCodeModel> initialValue;

  void filterBasedOn(String query) {
    final lowerQuery = query.toLowerCase();

    if (lowerQuery.isEmpty) {
      value = initialValue;
    } else {
      value = initialValue
          .where((e) => e.description.toLowerCase().contains(lowerQuery))
          .toList();
    }

    notifyListeners();
  }

}