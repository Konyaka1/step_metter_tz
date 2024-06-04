// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedometer_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PedometerState _$PedometerStateFromJson(Map<String, dynamic> json) =>
    PedometerState(
      isEnabled: json['isEnabled'] as bool,
      steps: (json['steps'] as num).toInt(),
      goal: (json['goal'] as num).toInt(),
      walkingMinutesDay: (json['walkingMinutesDay'] as num).toInt(),
      kmDay: (json['kmDay'] as num).toInt(),
      lastUpdatedDate: DateTime.parse(json['lastUpdatedDate'] as String),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$PedometerStateToJson(PedometerState instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'steps': instance.steps,
      'goal': instance.goal,
      'walkingMinutesDay': instance.walkingMinutesDay,
      'kmDay': instance.kmDay,
      'lastUpdatedDate': instance.lastUpdatedDate.toIso8601String(),
      'error': instance.error,
    };
