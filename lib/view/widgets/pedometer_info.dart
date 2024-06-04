import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_metter_tz/bloc/pedometer_cubit.dart';
import 'package:step_metter_tz/view/widgets/progress_bar.dart';

class PedometerInfo extends StatelessWidget {
  const PedometerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PedometerCubit>().state;
    final percent = state.steps / state.goal;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Enabled?: ${state.isEnabled}'),
        const SizedBox(height: 8),
        Text('Steps today: ${state.steps}'),
        const SizedBox(height: 8),
        Text('Goal: ${state.goal}'),
        const SizedBox(height: 8),
        Text('Last updated date: ${state.lastUpdatedDate}'),
        const SizedBox(height: 8),
        ProgressBar(percent: percent),
      ],
    );
  }
}
