class Timer {
  const Timer({
    required this.title,
    required this.mealDurationInMinutes,
    required this.forkCadenceInSeconds,
    required this.hasVibration,
    required this.hasSound,
  });

  final String title;
  final int mealDurationInMinutes;
  final int forkCadenceInSeconds;
  final bool hasVibration;
  final bool hasSound;
}
