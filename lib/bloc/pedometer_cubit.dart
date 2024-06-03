import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pedometer/pedometer.dart';
import 'package:step_metter_tz/bloc/pedometer_state.dart';

class PedometerCubit extends Cubit<PedometerState> {
  late StreamSubscription<StepCount> _streamSubscription;

  PedometerCubit()
      : super(
          const PedometerState(
            isEnabled: false,
            steps: 0,
            goal: 0,
            walkingMinutesDay: 0,
            kmDay: 0,
          ),
        ) {
    _streamSubscription = Pedometer.stepCountStream.listen(onStepCount)
      ..onError(onStepCountError);
  }

  void onStepCount(StepCount event) {
    print(event);
  }

  void onStepCountError(Object error) {
    print(error);
  }

  // @override
  // PedomentrState fromJson(Map<String, dynamic> json) {
  //   // TODO: implement fromJson
  //   throw UnimplementedError();
  // }

  // @override
  // Map<String, dynamic>? toJson(PedomentrState state) {
  //   // TODO: implement toJson
  //   throw UnimplementedError();
  // }
}
