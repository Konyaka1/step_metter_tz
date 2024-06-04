import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_metter_tz/bloc/pedometer_cubit.dart';

class PedometerSwitcher extends StatelessWidget {
  const PedometerSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: context.select((PedometerCubit cubit) => cubit.state.isEnabled),
      onChanged: (_) => context.read<PedometerCubit>().togglePedometer(),
    );
  }
}
