import 'package:flutter/material.dart';
import 'package:clase3/models/covid_data_model.dart';
import 'package:clase3/services/covid_data_service.dart';

class DataScreen extends StatefulWidget {
  @override
  _DataScreenState createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  final CovidDataService covidDataService = CovidDataService();
  late List<CovidData> covidData;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    final data = await covidDataService.fetchCovidData();
    setState(() {
      covidData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Data'),
      ),
      body: ListView.builder(
        itemCount: covidData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('State: ${covidData[index].state}'),
            subtitle: Column(
              children: [
                Text('Cases: ${covidData[index].cases}'),
                Text('Deaths: ${covidData[index].deaths}'),
                Text('Tests: ${covidData[index].tests}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
