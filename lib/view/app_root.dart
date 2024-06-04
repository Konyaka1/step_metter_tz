import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:step_metter_tz/bloc/pedometer_cubit.dart';
import 'package:step_metter_tz/service/pedometer_service.dart';
import 'package:step_metter_tz/view/home_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PedometerCubit(const PedometerService()),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => const HomeScreen(),
        },
      ),
    );
  }
}
