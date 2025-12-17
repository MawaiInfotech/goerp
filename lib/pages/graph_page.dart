import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:goerp/model/graph_model.dart';
import 'package:goerp/utils/screen_size_config.dart';
import 'package:goerp/widgets/app_top_bar.dart';
import '../bloc/graph_bloc.dart';
import '../state/graph_state.dart';


class Graphpage extends StatefulWidget {
  Graphpage(this.fileId, {Key? key}) : super(key: key);

  String fileId;
  @override
  State<Graphpage> createState() => _GraphpageState();
}

class _GraphpageState extends State<Graphpage> {
  late final GraphBloc bloc;
  late ZoomPanBehavior _zoomPanBehavior = ZoomPanBehavior();

  @override
  void initState() {
    bloc = BlocProvider.of<GraphBloc>(context, listen: false);
    bloc.init(widget.fileId);
    _zoomPanBehavior = ZoomPanBehavior(
        enablePinching: true,
        enableDoubleTapZooming: true,
        zoomMode: ZoomMode.xy,
        enableSelectionZooming: true,
        enablePanning: true);
    _initiateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppTopBar(),
      body: BlocConsumer<GraphBloc, GraphState>(listener: (_, state) {
        final error = state.maybeWhen(
            failed: (_, message) => message, orElse: () => null);
        if (error != null) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(error)));
        }
      }, builder: (_, state) {

        return state.when(loading: (_) => const CupertinoActivityIndicator(), content: _buildGraph, success: _buildGraph,
            failed:(_, error) => Column(
              children: [
                Text(error),
                ElevatedButton(onPressed: (){
                  bloc.init(widget.fileId);
                }, child: const Text("Try Again"))
              ],
            ));


      }),
    );
  }

  Widget _buildGraph(List<GraphModel> graphList){

    var amounts = graphList.map((e) => e.AmountSales).toList();
    var xAxisValue = graphList.map((e) => e.xAxisValue).toList();
    var graphName = graphList.map((e) => e.graphName).toList();
    var colorAxis = color;

    return SizedBox(
      height: ScreenSizeConfig.getFullHeight,
      width: ScreenSizeConfig.getFullWidth,
      child: SfCartesianChart(
        legend: Legend(
            isVisible: true,
            isResponsive: true,
            overflowMode: LegendItemOverflowMode.scroll),
        zoomPanBehavior: _zoomPanBehavior,
        tooltipBehavior: TooltipBehavior(
          enable: true,
          canShowMarker: true,
          decimalPlaces: 2,
          shared: true,
          color: Colors.black,
        ),
        primaryXAxis: CategoryAxis(
          name:  graphName.toString(),
          autoScrollingMode: AutoScrollingMode.start,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          arrangeByIndex: true,
        ),
        primaryYAxis: NumericAxis(
          autoScrollingMode: AutoScrollingMode.start,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
        ),
        series: <CartesianSeries>[
          ColumnSeries<double, String>(
            name: graphName[0],
            enableTooltip: true,
            dataLabelSettings: const DataLabelSettings(isVisible: true, useSeriesColor: true),
            dataSource: amounts,
            xValueMapper: (double amount, _) => xAxisValue[_],
            pointColorMapper: (color, _) => colorAxis[_],
            yValueMapper: (double amount, _) => amount,
          ),
        ],
      ),
    );
  }

  final List<Color> color = <Color>[];

_initiateColor(){
  color.add(const Color(0xff610C63));
  color.add(const Color(0xffD4D925));
  color.add(const Color(0xffD61C4E));
  color.add(const Color(0xff1F4690));
  color.add(const Color(0xffC689C6));
  color.add(const Color(0xffFFCE45));
  color.add(const Color(0xff066163));
  color.add(const Color(0xffE63E6D));
  color.add(const Color(0xffC36839));
  color.add(const Color(0xff1D5C63));
  color.add(const Color(0xffFF9F29));
  color.add(const Color(0xff4CACBC));
  color.add(Colors.yellow);
  color.add(const Color(0xff9EB23B));
  color.add(Colors.deepOrange);
  color.add(const Color(0xff125C13));
  color.add(const Color(0xffFF9F29));
  color.add(const Color(0xffA47E3B));
  color.add(Colors.green);
  color.add(const Color(0xffD67D3E));
  color.add(Colors.brown);
  color.add(Colors.blue);
  color.add(Colors.pink);
}


}
