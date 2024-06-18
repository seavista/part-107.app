import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ProgressReportScreen extends StatelessWidget {
  const ProgressReportScreen({Key? key}) : super(key: key);

  Future<Map<String, Map<String, int>>> getPerformanceData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('performanceByTopic');
    if (jsonString != null) {
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      return jsonMap
          .map((key, value) => MapEntry(key, Map<String, int>.from(value)));
    }
    return {};
  }

  List<charts.Series<PerformanceData, String>> _createChartData(
      Map<String, Map<String, int>> data) {
    List<PerformanceData> correctData = [];
    List<PerformanceData> incorrectData = [];

    data.forEach((topic, performance) {
      correctData.add(PerformanceData(topic, performance['correct']!));
      incorrectData.add(PerformanceData(topic, performance['incorrect']!));
    });

    return [
      charts.Series<PerformanceData, String>(
        id: 'Correct',
        colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
        domainFn: (PerformanceData data, _) => data.topic,
        measureFn: (PerformanceData data, _) => data.count,
        data: correctData,
      ),
      charts.Series<PerformanceData, String>(
        id: 'Incorrect',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (PerformanceData data, _) => data.topic,
        measureFn: (PerformanceData data, _) => data.count,
        data: incorrectData,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Report'),
      ),
      body: FutureBuilder<Map<String, Map<String, int>>>(
        future: getPerformanceData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            Map<String, Map<String, int>> data = snapshot.data ?? {};
            var seriesList = _createChartData(data);
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: charts.BarChart(
                seriesList,
                animate: true,
                barGroupingType: charts.BarGroupingType.grouped,
                behaviors: [charts.SeriesLegend()],
                domainAxis: charts.OrdinalAxisSpec(
                  renderSpec: charts.SmallTickRendererSpec(
                    labelRotation: 60,
                    labelStyle: charts.TextStyleSpec(fontSize: 12),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class PerformanceData {
  final String topic;
  final int count;

  PerformanceData(this.topic, this.count);
}
