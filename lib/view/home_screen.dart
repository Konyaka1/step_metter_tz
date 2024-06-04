import 'package:flutter/material.dart';
import 'package:step_metter_tz/view/widgets/pedometer_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: CircularProgressIndicator(),
            ),
            PedometerInfo(),
          ],
        ),
      ),
    );
  }
}
