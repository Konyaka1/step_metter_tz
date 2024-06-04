import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:step_metter_tz/bloc/pedometer_state.dart';
import 'package:step_metter_tz/service/model/daily_steps.dart';
import 'package:step_metter_tz/service/pedometer_service.dart';

final _defaultState = PedometerState(
  isEnabled: true,
  steps: 0,
  goal: 10000,
  walkingMinutesDay: 0,
  kmDay: 0,
  lastUpdatedDate: DateTime.now(),
);

class PedometerCubit extends HydratedCubit<PedometerState> {
  late StreamSubscription<DailySteps> _streamSubscription;
  final PedometerService _service;

  PedometerCubit(this._service) : super(_defaultState) {
    if (state.isEnabled) _subscribe();
  }

  void onStepCount(DailySteps event) {
    emit(state.copyWith(
      steps: event.steps,
      lastUpdatedDate: event.calcualtedTime,
    ));
  }

  void onStepCountError(Object error) {
    emit(state.copyWithError(error: error.toString()));
  }

  void togglePedometer() {
    if (state.isEnabled) {
      _unsubscribe();
    } else {
      _subscribe();
    }
    emit(state.copyWith(isEnabled: !state.isEnabled));
  }

  void updateGoal(int goal) {
    emit(state.copyWith(goal: goal));
  }

  void _subscribe() {
    _streamSubscription = _service.getDailySteps().listen(onStepCount)
      ..onError(onStepCountError);
  }

  void _unsubscribe() {
    _streamSubscription.cancel();
  }

  @override
  Future<void> close() {
    if (state.isEnabled) _unsubscribe();
    return super.close();
  }

  @override
  PedometerState fromJson(Map<String, dynamic> json) {
    return PedometerState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PedometerState state) {
    return state.toJson();
  }
}
