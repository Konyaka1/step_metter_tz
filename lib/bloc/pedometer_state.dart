class PedometerState {
  final bool isEnabled;
  final int steps;
  final int goal;
  final int walkingMinutesDay;
  final int kmDay;

  const PedometerState({
    required this.isEnabled,
    required this.steps,
    required this.goal,
    required this.walkingMinutesDay,
    required this.kmDay,
  });

  PedometerState copyWith({
    bool? isEnabled,
    int? steps,
    int? goal,
    int? walkingMinutesDay,
    int? kmDay,
  }) {
    return PedometerState(
      isEnabled: isEnabled ?? this.isEnabled,
      steps: steps ?? this.steps,
      goal: goal ?? this.goal,
      walkingMinutesDay: walkingMinutesDay ?? this.walkingMinutesDay,
      kmDay: kmDay ?? this.kmDay,
    );
  }
}
