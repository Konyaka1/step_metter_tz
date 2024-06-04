import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_metter_tz/bloc/pedometer_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: CircularProgressIndicator(),
            ),
            Builder(builder: (context) {
              return Switch.adaptive(
                  value: context
                      .select((PedometerCubit cubit) => cubit.state.isEnabled),
                  onChanged: (_) =>
                      context.read<PedometerCubit>().togglePedometer());
            })
          ],
        ),
      ),
    );
  }
}
