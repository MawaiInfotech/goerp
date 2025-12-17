import 'dart:developer';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:goerp/bloc/attendance_scanner_bloc.dart';
import 'package:goerp/constant.dart';
import 'package:goerp/service/attendance_service.dart';
import 'package:goerp/state/attendance_scanner_state.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

class AttendanceScannerPage extends StatefulWidget {
  const AttendanceScannerPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AttendanceScannerPageState();
}

class _AttendanceScannerPageState extends State<AttendanceScannerPage> {

  late AttendanceService attendanceService;
  late AttendanceScannerBloc attendanceScannerBloc;

  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  final player = AudioPlayer();

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    attendanceService = Provider.of<AttendanceService>(context, listen: false);
    attendanceScannerBloc = AttendanceScannerBloc(attendanceService);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //    appBar: AppBar(title: Text("QR Scanner"),backgroundColor: Colors.black.withOpacity(0.1),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded( child: _buildQrView(context)),

        ],
      ),
    );
  }


  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        List<String> user = result!.code.toString().split("#");
        final id = user[0];
        final code = user[1];
        final name = user[2];

        controller.pauseCamera();
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text("Details! "),
            content:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Employee Id -  $id"),
                Text("Employee Code -  $code"),
                Text("Employee Name -  $name"),
              ],
            ),
            actions: <Widget>[
            BlocConsumer<AttendanceScannerBloc, AttendanceScannerState>(
          bloc: attendanceScannerBloc,
          listener: (_, state) {
            state.maybeWhen(
                content: (_,) async {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text( "Record saved Successfully")));

                  await player.play(AssetSource('audio/granted.mp3'));
                  Navigator.of(ctx).pop();
                  controller.resumeCamera();

                },
                failed: (_, message) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                  Navigator.pop(context);
                },
                orElse: () {});
          },
          builder: (context, state) {
            return state.maybeWhen(loading: (_) {
              return const CircularProgressIndicator();
            }, orElse: () {
              return  TextButton(
                onPressed: () async {
                  final data = {
                    "docno":code,
                    "docunit":unitCd,
                    "docappby":empCd
                  };
                  await attendanceScannerBloc.init(data);

                },
                child: const Text("Ok"),
              );
            });
          })
            ],
          ),
        );
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}