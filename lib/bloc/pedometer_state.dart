class PedometerState {
  final bool isEnabled;
  final int steps;
  final int goal;
  final int walkingMinutesDay;
  final int kmDay;
  final DateTime lastUpdatedDate;
  final String? error;

  const PedometerState({
    required this.isEnabled,
    required this.steps,
    required this.goal,
    required this.walkingMinutesDay,
    required this.kmDay,
    required this.lastUpdatedDate,
    this.error,
  });

  PedometerState copyWith({
    bool? isEnabled,
    int? steps,
    int? goal,
    int? walkingMinutesDay,
    int? kmDay,
    DateTime? lastUpdatedDate,
  }) {
    return PedometerState(
      isEnabled: isEnabled ?? this.isEnabled,
      steps: steps ?? this.steps,
      goal: goal ?? this.goal,
      walkingMinutesDay: walkingMinutesDay ?? this.walkingMinutesDay,
      kmDay: kmDay ?? this.kmDay,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
    );
  }

  PedometerState copyWithError({
    required String error,
    bool? isEnabled,
    int? steps,
    int? goal,
    int? walkingMinutesDay,
    int? kmDay,
    DateTime? lastUpdatedDate,
  }) {
    return PedometerState(
      isEnabled: isEnabled ?? this.isEnabled,
      steps: steps ?? this.steps,
      goal: goal ?? this.goal,
      walkingMinutesDay: walkingMinutesDay ?? this.walkingMinutesDay,
      kmDay: kmDay ?? this.kmDay,
      lastUpdatedDate: lastUpdatedDate ?? this.lastUpdatedDate,
      error: error,
    );
  }
}
