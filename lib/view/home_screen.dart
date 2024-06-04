import 'package:flutter/material.dart';
import 'package:step_metter_tz/view/widgets/pedometer_info.dart';
import 'package:step_metter_tz/view/widgets/pedometer_switcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedometer'),
        backgroundColor: Colors.blue,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              PedometerInfo(),
              PedometerSwitcher(),
            ],
          ),
        ),
      ),
    );
  }
}
