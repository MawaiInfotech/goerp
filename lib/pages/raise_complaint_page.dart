import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/bloc/machine_details_bloc.dart';
import 'package:goerp/bloc/submit_complaint_bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/model/machine_details_model.dart';
import 'package:goerp/service/breakdown_service.dart';
import 'package:goerp/state/machine_details_state.dart';
import 'package:goerp/state/submit_complaint_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../bloc/unit_list_cubit.dart';
import '../model/unitlist_model.dart';
import '../service/login_service.dart';

class RaiseComplaintPage extends StatefulWidget {
  const RaiseComplaintPage({super.key});

  @override
  State<RaiseComplaintPage> createState() => _RaiseComplaintPageState();
}

class _RaiseComplaintPageState extends State<RaiseComplaintPage> {
  final _formKey = GlobalKey<FormState>();
  XFile? pickedImage;
  final ImagePicker _picker = ImagePicker();

  final Color borderColor = const Color(0xFFDADADA);
  final Color fieldBackground = const Color(0xFFF8F8F8);
  final Color whiteBackground = Colors.white;

  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<List<MachineDetailsModel>> _filteredMachines = ValueNotifier([]);


  final TextEditingController _complaintDateTimeController = TextEditingController();
  final TextEditingController detailsController = TextEditingController();
  final TextEditingController _breakdownDateTimeController =
  TextEditingController();
  ValueNotifier<String> unitName = ValueNotifier("Select Unit");
  ValueNotifier<String> unitCode = ValueNotifier("");
  ValueNotifier<String> machineName = ValueNotifier("Select Machine");
  ValueNotifier<String> machineCode = ValueNotifier("");
  ValueNotifier<String> locationName = ValueNotifier("Location");
  ValueNotifier<String> loCationCode = ValueNotifier("");


  late final LoginService loginService;
  late final BreakdownService breakdownService;
  late final UnitListCubit unitListCubit;
  late final MachineDetailsBloc machineDetailsBloc;
  late final SubmitComplaintBloc submitComplaintBloc;


  @override
  void initState() {
    super.initState();
    // Set default Complaint Date & Time as current
    _complaintDateTimeController.text =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    loginService = Provider.of<LoginService>(context, listen: false);
    breakdownService = Provider.of<BreakdownService>(context, listen: false);
    unitListCubit = UnitListCubit(loginService);
    unitListCubit.fetchUnitListBreakdown();
    machineDetailsBloc = MachineDetailsBloc(breakdownService);
    submitComplaintBloc = SubmitComplaintBloc(breakdownService);
  }



  @override
  void dispose() {
    _complaintDateTimeController.dispose();
    _breakdownDateTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppTopBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                color: const Color(0xFFF8EDEB),
                child: const Text(
                  "Machine BreakDown Complaints",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF1E3A5F),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 18),

              /// Unit Code
              InkWell(
                onTap: (){
                  _showUnitDialogue();
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
                        valueListenable: unitName,
                        builder: (context, value, child) => Text(
                          unitName.value,
                          style: TextStyle(
                              color:  Colors.black,fontSize: 15.dw),
                        ),
                      ),
                      const Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              /// Machine
              InkWell(
                onTap: (){
                 // _showUnitDialogue();
                  _buildMachineCodeDialog();
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
              const SizedBox(height: 10),

              /// Location
              Container(
                alignment: Alignment.centerLeft,
                height: 50.dh,
                padding: EdgeInsets.all(10.dw),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: fieldBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1.dw,color: Colors.grey.shade300)
                ),
                child: ValueListenableBuilder<String>(
                  valueListenable: locationName,
                  builder: (context, value, child) => Text(
                    locationName.value,
                    style: TextStyle(
                        color:  Colors.black,fontSize: 15.dw),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              /// Complaint Date & Time (default current)
              TextFormField(
                controller: _complaintDateTimeController,
                readOnly: true,
                decoration:
                getTextFieldDecoration('Complaint Date & Time'),
              //  onTap: () => _pickDateTime(_complaintDateTimeController),
              ),
              const SizedBox(height: 10),

              /// Breakdown Details
              TextFormField(
                maxLines: 3,
                controller: detailsController,
                decoration:
                getTextFieldDecoration('BreakDown Details', white: true),
              ),
              const SizedBox(height: 10),

              /// Breakdown Date & Time
              TextFormField(
                controller: _breakdownDateTimeController,
                readOnly: true,
                decoration:
                getTextFieldDecoration('BreakDown Date & Time', white: true),
                onTap: () => _pickDateTime(_breakdownDateTimeController),
              ),
              const SizedBox(height: 10),

              /// Complaint Name
              Container(
                alignment: Alignment.centerLeft,
                height: 50.dh,
                padding: EdgeInsets.all(10.dw),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: fieldBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(width: 1.dw,color: Colors.grey.shade300)
                ),
                child: Text(
                  empCd,
                  style: TextStyle(
                      color:  Colors.black,fontSize: 15.dw),
                ),
              ),
              const SizedBox(height: 22),

              /// Upload Image
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: borderColor, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    if (pickedImage == null)
                      const Column(
                        children: [
                          Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black54,
                              size: 60
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Upload Image',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'image size must be less than 2MB.',
                            style: TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                        ],
                      )
                    else
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          File(pickedImage!.path),
                          width: double.infinity,
                          height: 180,
                          fit: BoxFit.cover,
                        ),
                      ),
                    const SizedBox(height: 12),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: _pickImage,
                      icon: const Icon(Icons.cloud_upload_rounded,
                          color: Colors.white),
                      label: const Text(
                        'Choose File',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              /// Buttons Row
              Row(
                children: [
                  Expanded(
                    child:Container(
                      //   width: double.infinity,
                      height: 40,
                      //   padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        gradient:  LinearGradient(
                            colors: [Colors.red, Colors.red.shade900], // Gradient colors
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Reset',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                 buildSubmitContainer()
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  _buildMachineListBody() {
    return BlocConsumer<MachineDetailsBloc, MachineDetailsState>(
      bloc: machineDetailsBloc,
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

  Widget _buildMachineCodeLoading(List<MachineDetailsModel> model){
    return const Center(child: CircularProgressIndicator(),);
  }

  Widget _buildMachineListContent(List<MachineDetailsModel> model) {
    // initialize filtered list only once
    _filteredMachines.value = model;

    return ValueListenableBuilder<List<MachineDetailsModel>>(
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
                        machineName.value = machine.name;
                        machineCode.value = machine.code;
                        locationName.value = machine.locationName;
                        loCationCode.value = machine.locationCode;
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(5.0.dw),
                        child: Text(machine.name, style: TextStyle(fontSize: 15.dw)),
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
                  "Select or search Machine",
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
                  final machines = machineDetailsBloc.state.whenOrNull(
                    success: (list) => list,
                    content: (list) => list,
                  ) ?? [];
                  _filteredMachines.value = machines
                      .where((machine) =>
                      machine.name.toLowerCase().contains(query.toLowerCase()))
                      .toList();
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
  }


  Future<bool> _showUnitDialogue() async {
    // print(data);
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: BlocBuilder<UnitListCubit, List<UnitListModel>>(
                bloc: unitListCubit,
                builder: (context, data) {
                  return SizedBox(
                    width: ScreenSizeConfig.getFullWidth,
                    height: 200.dh,
                    child: ListView.builder(
                        itemCount: data.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final unitListData = data[index];
                          return InkWell(
                            onTap: () {
                              Navigator.pop(context, true);
                              unitName.value = unitListData.name;
                              unitCode.value = unitListData.unitcode;

                              // ✅ Clear old machine data before loading new one
                              // machineName.value = "Select Machine";
                              // machineCode.value = "";
                              _filteredMachines.value = [];
                              machineDetailsBloc.clear(); // <-- add this method (below)

                              machineDetailsBloc.init(unitCode.value);
                            },

                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),

                              decoration: BoxDecoration(
                                color: (index%2==0)? Colors.blue.shade50 : Colors.grey.shade100,
                               // border: Border.all(color: Colors.grey),
                              ),
                              child: Text(
                                unitListData.name,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.dw,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                }),
          );
        }
    )
        ??
        false;
  }

  Future<void> _pickImage() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Photo Gallery'),
            onPressed: () {
              Navigator.of(context).pop();
              getImageFromGallery();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              Navigator.of(context).pop();
              getImageFromCamera();
            },
          ),
        ],
      ),
    );
  }

  Future getImageFromGallery() async {
    final XFile? image =
    await _picker.pickImage(source: ImageSource.gallery, imageQuality: 20);

    setState(() {
      pickedImage = image;
    });
  }

  Future getImageFromCamera() async {
    final XFile? image =
    await _picker.pickImage(source: ImageSource.camera, imageQuality: 20);
    setState(() {
      pickedImage = image;

    });
  }

  Future<void> _pickDateTime(TextEditingController controller) async {
    final now = DateTime.now();
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(primary: Color(0xFF0048B3)),
          ),
          child: child!,
        );
      },
    );

    if (date != null) {
      final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(now),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: const ColorScheme.light(primary: Color(0xFF0048B3)),
            ),
            child: child!,
          );
        },
      );

      if (time != null) {
        final selectedDateTime =
        DateTime(date.year, date.month, date.day, time.hour, time.minute);
        controller.text = DateFormat('yyyy-MM-dd HH:mm:ss').format(selectedDateTime);
      }
    }
  }

  Widget buildSubmitContainer() {
    return BlocConsumer<SubmitComplaintBloc, SubmitComplaintState>(
        bloc: submitComplaintBloc,
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
            return  Expanded(
              child:InkWell(
                onTap: () async {

                    await submitComplaintBloc.init(
                        unitCode.value,
                        machineCode.value,
                        _complaintDateTimeController.text,
                        loCationCode.value,
                        detailsController.text,
                        _breakdownDateTimeController.text,
                        empCd,
                        pickedImage?.path ?? ""

                    );
                },
                child: Container(
                  //   width: double.infinity,
                  height: 40,
                  //   padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF3d8ad8), Color(0xFF003060)], // Gradient colors
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Save Record',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),
                  ),
                ),
              ),
            );



          });
        });


  }

  InputDecoration getTextFieldDecoration(String hint, {bool white = false}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.black87, fontSize: 14),
      filled: true,
      fillColor: white ? whiteBackground : fieldBackground,
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: borderColor, width: 1.1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: borderColor, width: 1.3),
      ),
    );
  }
}
