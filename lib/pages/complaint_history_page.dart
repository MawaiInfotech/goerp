import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goerp/bloc/complaint_history_bloc.dart';
import 'package:goerp/bloc/location_machine_bloc.dart';
import 'package:goerp/model/complaint_history_model.dart';
import 'package:goerp/model/location_machine_model.dart';
import 'package:goerp/state/complaint_history_state.dart';
import 'package:goerp/state/location_machine_state.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../bloc/unit_list_cubit.dart';
import '../model/unitlist_model.dart';
import '../service/breakdown_service.dart';
import '../service/login_service.dart';

class ComplaintHistoryPage extends StatefulWidget {
  const ComplaintHistoryPage({Key? key}) : super(key: key);

  @override
  State<ComplaintHistoryPage> createState() => _ComplaintHistoryPageState();
}

class _ComplaintHistoryPageState extends State<ComplaintHistoryPage> {
  // Filter controllers


  DateTime? fromDate;
  DateTime? toDate;


  ValueNotifier<String> unitName = ValueNotifier("Select Unit");
  ValueNotifier<String> unitCode = ValueNotifier("");
  ValueNotifier<String> locationName = ValueNotifier("Location");
  ValueNotifier<String> locationCode = ValueNotifier("");
  ValueNotifier<String> machineName = ValueNotifier("Machine");
  ValueNotifier<String> machineCode = ValueNotifier("");
  ValueNotifier<String> statusName = ValueNotifier("Status");
  ValueNotifier<String> statusCode = ValueNotifier("");


  late final LoginService loginService;
  late final BreakdownService breakdownService;
  late final UnitListCubit unitListCubit;
  late final LocationMachineBloc locationMachineBloc;
  late final ComplaintHistoryBloc complaintHistoryBloc;

  @override
  void initState() {
    super.initState();
    // Set default Complaint Date & Time as current
    loginService = Provider.of<LoginService>(context, listen: false);
    breakdownService = Provider.of<BreakdownService>(context, listen: false);
    unitListCubit = UnitListCubit(loginService);
    unitListCubit.fetchUnitListBreakdown();
    locationMachineBloc = LocationMachineBloc(breakdownService);
    complaintHistoryBloc = ComplaintHistoryBloc(breakdownService);
  }

  String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      body: Column(
        children: [
          const SizedBox(height: 10),

          // 🔥 FILTER BUTTON AT TOP
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.centerRight,
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: () => openFilterDialog(),
                  icon : const Icon(Icons.filter_list),
                  label : const Text("Filter"),
                  style : ElevatedButton.styleFrom(
                    backgroundColor : Colors.blue.shade700,
                    padding : const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                    shape : RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Excel + PDF row
          // Row(
          //   children: [
          //     IconButton(
          //         onPressed: () {},
          //         icon: Image.asset("assets/images/excel.png"),
          //     ),
          //     IconButton(
          //         onPressed: () {},
          //         icon: Image.asset("assets/images/document.png"),
          //     ),
          //   ],
          // ),

          // TABLE
          _buildBody(),


        ],
      ),
    );
  }

  _buildBody() {
    return BlocConsumer<ComplaintHistoryBloc, ComplaintHistoryState>(
      bloc: complaintHistoryBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLoading,
            content: _buildContent,
            success: _buildContent,
            failed: (form, __) => _buildContent(form));
      },
    );
  }

  Widget _buildLoading(ComplaintHistoryModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildContent(ComplaintHistoryModel model) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 930, // fixed full table width
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () async {

                      final url = model.excel_url;
                      final Uri uri = Uri.parse(url);

                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );

                    },
                    icon: Image.asset("assets/images/excel.png"),
                  ),
                  IconButton(
                    onPressed: () async {
                      final url = model.pdf_url;
                      final Uri uri = Uri.parse(url);

                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );

                    },
                    icon: Image.asset("assets/images/document.png"),
                  ),
                ],
              ),
              // 🔵 TABLE HEADER
              Container(
                color: Colors.blue.shade700,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    headerCell("S.N", 60),
                    headerCell("Complaint No", 160),
                    headerCell("Machine", 120),
                    headerCell("Complaint By", 150),
                    headerCell("BreakDown Dt/Time", 160),
                    headerCell("BreakDown Detail", 150),
                    headerCell("Status", 100),
                  ],
                ),
              ),

              // 🔥 DATA ROWS USING LISTVIEW BUILDER
              Expanded(
                child: ListView.builder(
                  itemCount: model.details_data.length,
                  itemBuilder: (context, index) {
                    final item = model.details_data[index];
                    final isEven = index % 2 == 0;
                    return Container(
                      color: isEven ? Colors.blue.shade50 : Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          dataCell((index +1).toString(), 60),

                          // 🔵 COMPLAINT NO CLICKABLE
                          dataCellButton(
                            item.complainNo,
                            160,
                            onTap: () {
                              // Open detail page OR dialog
                            },
                          ),

                          dataCell(item.machineCode, 120),
                          dataCell(item.complaintBy, 150),
                          dataCell(item.breakdownDtTm, 160),
                          dataCell(item.details, 150),
                          dataCell(item.status, 100),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildLocationMachineBody() {
    return BlocConsumer<LocationMachineBloc, LocationMachineState>(
      bloc: locationMachineBloc,
      listener: (_, state) {},
      builder: (_, state) {
        return state.when(
            loading: _buildLocationMachineLoading,
            content: _buildLocationMachineContent,
            success: _buildLocationMachineContent,
            failed: (form, __) => _buildLocationMachineContent(form));
      },
    );
  }

  Widget _buildLocationMachineLoading(LocationMachineModel model) {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildLocationMachineContent(LocationMachineModel model) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (unitCode.value.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please select a Unit first")));
              return;
            }
            _buildLocationListModel(model);
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
                Expanded(
                  child: ValueListenableBuilder<String>(
                    valueListenable: locationName,
                    builder: (context, value, child) => Text(
                      locationName.value,
                      style: const TextStyle(color: Colors.black, fontSize: 15,overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ),

        const SizedBox(height: 15),
        InkWell(
          onTap: () {
            if (unitCode.value.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please select a Unit first")));
              return;
            }
            _buildMachineListModel(model);
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
                Expanded(
                  child: ValueListenableBuilder<String>(
                    valueListenable: machineName,
                    builder: (context, value, child) => Text(
                      machineName.value,
                      style: const TextStyle(color: Colors.black, fontSize: 15,overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ),
      ],
    );
  }



  Widget headerCell(String text, double width) {
    return SizedBox(
      width: width,
      child: Text(
        text,

        style: const TextStyle(

            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget dataCell(String text, double width) {
    return SizedBox(
      width: width,
      child: Text(
        text,
        maxLines: 1,
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }

  Widget dataCellButton(String text, double width, {required VoidCallback onTap}) {
    return SizedBox(
      width: width,
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }


  // -------- FIXED WIDTH CELL ---------
  DataCell dataCellFixed(String text, double width) {
    return DataCell(
      SizedBox(
        width: width,
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  // FILTER DIALOG
  openFilterDialog() {
    showDialog(
      context: context,
      builder: (ctx) => Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: StatefulBuilder(
                builder: (ctx2, setStateDialog) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Search By Filter",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),

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
                      const SizedBox(height: 10,),
                      dateField(
                        label: "From Date",
                        date: fromDate,
                        onTap: () async {
                          DateTime? d = await pickDate(true);
                          if (d != null) {
                            setStateDialog(() {
                              fromDate = d;
                            });
                          }
                        },
                      ),


                      dateField(
                        label: "To Date",
                        date: toDate,
                        onTap: () async {
                          DateTime? d = await pickDate(false);
                          if (d != null) {
                            setStateDialog(() {
                              toDate = d;
                            });
                          }
                        },
                      ),


                      _buildLocationMachineBody(),
                      const SizedBox(height: 25),

                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (_) {
                              return Dialog(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: const Text("Open"),
                                      onTap: () {
                                        statusName.value = "Open";
                                        statusCode.value = "OPN";
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: const Text("Rectification Pending"),
                                      onTap: () {
                                        statusName.value = "Rectification Pending";
                                        statusCode.value = "ACK";
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: const Text("Handover Pending"),
                                      onTap: () {
                                        statusName.value = "Handover Pending";
                                        statusCode.value = "RFC";
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: const Text("Closed"),
                                      onTap: () {
                                        statusName.value = "Closed";
                                        statusCode.value = "CLS";
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 50,
                          padding: const EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(width: 1, color: Colors.grey.shade300),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ValueListenableBuilder<String>(
                                valueListenable: statusName,
                                builder: (context, value, child) => Text(
                                  value,
                                  style: const TextStyle(color: Colors.black, fontSize: 15),
                                ),
                              ),
                              const Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      Column(
                        children: [
                          // RESET
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent,
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              onPressed: () {
                                setStateDialog(() {
                                  fromDate = null;
                                  toDate = null;

                                  unitName.value = "Select Unit";
                                  unitCode.value = "";

                                  locationName.value = "Location";
                                  locationCode.value = "";

                                  machineName.value = "Machine";
                                  machineCode.value = "";

                                  statusName.value = "Status";
                                  statusCode.value = "";

                                });
                              },
                              child: const Text("RESET", style: TextStyle(color: Colors.white)),
                            ),
                          ),

                          const SizedBox(height: 10),

                          // SEARCH
                          InkWell(
                            onTap: () async {
                              Navigator.pop(context);

                              // Format only if date is not null
                              String fromDateStr = fromDate != null ? formatDate(fromDate!) : "";
                              String toDateStr   = toDate != null ? formatDate(toDate!) : "";

                              await complaintHistoryBloc.init(
                                unitCode.value,
                                fromDateStr,
                                toDateStr,
                                locationCode.value,
                                machineCode.value,
                                statusCode.value
                              );
                            },

                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              height: 45,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xFF007BFF), Color(0xFF002D72)],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: const Center(
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }



  Future<void> _buildLocationListModel(LocationMachineModel model) {
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
              itemCount: model.location_list.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        locationName.value = model.location_list[index].description;
                        locationCode.value = model.location_list[index].locationCode;
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Text(model.location_list[index].description, style: const TextStyle(fontSize: 15)),
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

  Future<void> _buildMachineListModel(LocationMachineModel model) {
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
              itemCount: model.machine_list.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        machineName.value = model.machine_list[index].description;
                        machineCode.value = model.machine_list[index].machineCode;
                        Navigator.pop(context);

                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(8),
                        child: Text(model.machine_list[index].description, style: const TextStyle(fontSize: 15)),
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
                            locationName.value = "Location";
                            locationCode.value = "";
                            machineName.value = "Machine";
                            machineCode.value = "";
                            locationMachineBloc.init(unitCode.value) ;// <-- add this method (below)

                            //  machineDetailsBloc.init(unitCode.value);
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

  // FIELDS --------------------------------------------------

  Widget dropField({
    required String label,
    required String? value,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value ?? label,
                style: TextStyle(
                    color: value == null ? Colors.black54 : Colors.black, fontSize: 15),
              ),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
        ),
      ),
    );
  }

  Widget dateField({
    required String label,
    required DateTime? date,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date == null ? label : DateFormat("yyyy-MM-dd").format(date),
                style: TextStyle(
                    color: date == null ? Colors.black54 : Colors.black, fontSize: 15),
              ),
              const Icon(Icons.calendar_month)
            ],
          ),
        ),
      ),
    );
  }

  // Dummy table data
  List<Map<String, dynamic>> data = List.generate(20, (i) {
    return {
      "sn": i + 1,
      "complaintNo": "BD25-25/001/00015",
      "machine": "MECH-0017",
      "complaintBy": "JAGDEEP SARMA",
      "breakDate": "2025-08-08, 5:45",
      "detail": "KEY BOARD INST",
    };
  });

  // Pick Date
  Future<DateTime?> pickDate(bool isFrom) async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      lastDate: DateTime(2030),
      firstDate: DateTime(2020),
    );
  }

}
