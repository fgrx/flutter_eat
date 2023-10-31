import 'package:flutter_eat/models/timer.dart';

List<Timer> fakeTimers = const [
  Timer(
    title: "At home",
    mealDurationInMinutes: 20,
    forkCadenceInSeconds: 20,
    hasVibration: false,
    hasSound: true,
  ),
  Timer(
      title: "During work",
      mealDurationInMinutes: 15,
      forkCadenceInSeconds: 20,
      hasVibration: true,
      hasSound: false),
];
