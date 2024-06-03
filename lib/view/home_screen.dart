import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_metter_tz/bloc/pedometer_state.dart';
import 'package:step_metter_tz/bloc/pedometer_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final body = BlocBuilder<PedometerCubit, PedometerState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(state.isEnabled.toString()),
            Text(state.steps.toString()),
            Text(state.goal.toString()),
            Text(state.walkingMinutesDay.toString()),
            Text(state.kmDay.toString()),
          ],
        );
      },
    );
    return BlocProvider(
      create: (_) => PedometerCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Center(
                child: CircularProgressIndicator(),
              ),
              body,
            ],
          ),
        ),
      ),
    );
  }
}
