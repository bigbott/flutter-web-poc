import 'package:community_charts_flutter/community_charts_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_poc/ui/widgets/area_and_line_chart.dart';

class TaskChart extends StatelessWidget {
  final EdgeInsets margin;
  final Series<dynamic, num> series;

  const TaskChart({
    Key? key,
    this.margin = EdgeInsets.zero,
    required this.series,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: margin,
      child: AreaAndLineChart.withData(series),
    );
  }
}
