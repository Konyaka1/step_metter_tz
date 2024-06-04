import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    required this.percent,
    super.key,
  });

  final double percent;

  @override
  Widget build(BuildContext context) {
    final formattedValue = (percent * 100).toStringAsFixed(2);
    return CircularPercentIndicator(
      radius: 35,
      percent: percent,
      center: Text('$formattedValue %'),
    );
  }
}
