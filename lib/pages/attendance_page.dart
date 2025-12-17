import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:goerp/themes/app_colors.dart';
import '../bloc/login_bloc.dart';
import '../service/login_service.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({Key? key}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {

  late final LogInPageBloc logInPageBloc;

  final secondNotifier = ValueNotifier<int>(0);

  String? _currentAddress;

  String selectedOutput = "O";

  TextEditingController remarkController = TextEditingController();

  final focusNode = FocusNode();

  bool hasCheckIn= false;


  Position? _currentPosition;

  bool permissionPopup = false;

@override
  void initState() {
  final loginService = Provider.of<LoginService>(context, listen: false);
  logInPageBloc = LogInPageBloc(loginService);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance",style: TextStyle(
          fontSize: 20
        ),),
        backgroundColor: AppColors.red,
        centerTitle: true,
      ),
      body: Container()
     // SafeArea(child: SingleChildScrollView(child: _buildContent())),
    );
  }

// Widget _buildContent(){
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8.0.dw,vertical: 10.dh),
//       child: Column(
//         children: [
//           Card(
//             elevation: 10.dw,
//             color: Colors.white70,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     _buildDateTime(
//                       dateFormat:
//                       DateFormat("EEE, MMM- dd - yyyy").format(DateTime.now()),
//                     ),
//                     ValueListenableBuilder(
//                         valueListenable: secondNotifier,
//                         builder: (_, ___, __) {
//                           return _buildDateTime(
//                               dateFormat:
//                               DateFormat("hh:mm aaa").format(DateTime.now()));
//                         }),
//                   ],
//                 ),
//                 _buildInfoCard(),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 8.0.dw),
//             child: Text("Attendance Details",style: TextStyle(
//               fontSize: 18.dw,
//               fontWeight: FontWeight.w600
//             ),),
//           ),
//           _buildAttendanceList()
//         ],
//       ),
//     );
// }
//
//   _buildDateTime({required dateFormat}) {
//     return Padding(
//       padding: EdgeInsets.all(8.dw),
//       child: Text(
//         dateFormat,
//         style: TextStyle(
//             color: AppColors.navyblue,
//             fontSize: 16.dw,
//             fontWeight: FontWeight.w600),
//       ),
//     );
//   }

  // _buildInfoCard() {
  //   return Column(
  //     children: [
  //       Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           _buildText(
  //               title: "Welcome,  " +
  //               logInPageBloc.loginService.getUserEntry.userName + "  ( " +
  //                   logInPageBloc.loginService.getUserEntry.employeeId + " )"),
  //           Padding(
  //             padding: EdgeInsets.all(8.0.dw),
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 SizedBox(
  //                   width: ScreenSizeConfig.getFullWidth / 1.4,
  //                   child: Text(
  //                     _currentAddress ?? "Noida sector 63, Up",
  //                     maxLines: 2,
  //                     textAlign: TextAlign.center,
  //                     style:
  //                     TextStyle(fontWeight: FontWeight.w400, fontSize: 16.dw),
  //                   ),
  //                 ),
  //                 InkWell(
  //                   onTap: () async {
  //                     setState(() {
  //                       _getCurrentPosition();
  //                     });
  //                   },
  //                   child: const Icon(Icons.refresh),
  //                 ),
  //               ],
  //             ),
  //           ),
  //           _buildCheckInButton(title: "Mark Location"),
  //
  //         ],
  //       )
  //     ],
  //   );
  // }
  //
  // _buildText({required String title}) {
  //   return Center(
  //     child: Text(
  //       title,
  //       style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.dh),
  //     ),
  //   );
  // }
  //
  // _buildCheckInButton({required String title}) {
  //   return Padding(
  //     padding: EdgeInsets.all(5.dw),
  //     child: Center(
  //       child: SizedBox(
  //         width: ScreenSizeConfig.getFullWidth / 1.3,
  //         child: ElevatedButton(
  //             onPressed: () async {
  //               // XFile? imagePicture = await launchCustomImagePicker(context);
  //               //
  //               // // print(imagePicture!.path);
  //               //
  //               // showConfirmationDialog(imagePicture!.path);
  //             },
  //             style: ElevatedButton.styleFrom(
  //                 elevation: 10.dw,
  //                 backgroundColor: AppColors.navyblue,
  //                 shape: RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.circular(10.dw))),
  //             child: Text(
  //               title,
  //               maxLines: 2,
  //               overflow: TextOverflow.ellipsis,
  //               style: TextStyle(fontSize: 18.dh, fontWeight: FontWeight.w600),
  //             )),
  //       ),
  //     ),
  //   );
  // }
  //
  // _buildAttendanceList(){
  // return ListView.builder(
  //   physics: const NeverScrollableScrollPhysics(),
  //   shrinkWrap: true,
  //   itemCount: 6, itemBuilder: (BuildContext context, int index) {
  //   return Container(
  //       margin: EdgeInsets.only(top: 20.dh,left: 10.dw,right: 10.dw),
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //           border: Border.all(color: AppColors.darkgrey),
  //         borderRadius: BorderRadius.circular(10.dw)
  //       ),
  //       child: Column(
  //         children: [
  //           Container(
  //             decoration: BoxDecoration(
  //               border: Border.all(color: AppColors.darkgrey),
  //               color:const Color(0xffeddcd2),
  //               borderRadius: BorderRadius.only(topLeft: Radius.circular(10.dw), topRight: Radius.circular(10.dw))
  //             ),
  //             height: 30.dh,
  //             child: Center(child: Text("Marked Location",style: TextStyle(
  //                 fontSize: 16.dw,
  //                 fontWeight: FontWeight.w600,
  //                 color: AppColors.red
  //             ),)),
  //           ),
  //           Container(
  //             decoration: BoxDecoration(
  //                 border: Border(
  //                     right: BorderSide(
  //                         color: AppColors.darkgrey
  //                     )
  //                 )
  //             ),
  //             padding: EdgeInsets.symmetric(horizontal: 10.dw),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 SizedBox(height: 8.dw),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                   children: [
  //                     Text("25-jul-2023",style: TextStyle(
  //                       fontSize: 16.dw,
  //                       fontWeight: FontWeight.w500,
  //                     ),),
  //                     Text("18:00:00",style: TextStyle(
  //                       fontSize: 16.dw,
  //                       fontWeight: FontWeight.w500,
  //                     ),),
  //                   ],
  //                 ),
  //                 SizedBox(height: 10.dh),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Icon(Icons.add_location_alt_rounded,color:AppColors.red,size: 20.dh,),
  //                     Text(" Ghaziabad Uttar Pradesh",maxLines: 3,style: TextStyle(
  //                         fontSize: 14.dw, fontWeight: FontWeight.w500
  //                     ),),
  //                   ],
  //                 ),
  //                 SizedBox(height: 8.dh,),
  //               ],
  //             ),
  //           )
  //         ],
  //       )
  //   );
  // },
  //
  // );
  // }
  //
  // Future<bool> _handleLocationPermission() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //         content: Text(
  //             'Location services are disabled. Please enable the services')));
  //     return false;
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text('Location permissions are denied')));
  //       return false;
  //     }
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text(
  //             'Location permissions are permanently denied, we cannot request permissions.'),
  //       ),
  //     );
  //     return false;
  //   }
  //   return true;
  // }
  //
  // Future<void> _getCurrentPosition() async {
  //   final hasPermission = await _handleLocationPermission();
  //
  //   if (!hasPermission) return;
  //   await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
  //       .then((Position position) {
  //     setState(() => _currentPosition = position);
  //     setState(() {
  //       _getAddressFromLatLng(_currentPosition!);
  //     });
  //   }).catchError((e) {
  //     debugPrint(e);
  //   });
  // }
  //
  // Future<void> _getAddressFromLatLng(Position position) async {
  //   await placemarkFromCoordinates(
  //       _currentPosition!.latitude, _currentPosition!.longitude)
  //       .then((List<Placemark> placemarks) {
  //     Placemark place = placemarks[0];
  //     setState(() {
  //       _currentAddress =
  //       '${place.street},${place.subLocality},${place.locality}';
  //     });
  //   }).catchError((e) {
  //     debugPrint(e);
  //   });
  // }

}
