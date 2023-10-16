import 'package:flutter/material.dart';
import 'data_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Data'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DataScreen(),
            ));
          },
          child: Text('View Data'),
        ),
      ),
    );
  }
}
