import 'package:daily_pedometer2/daily_pedometer2.dart';
import 'package:step_metter_tz/service/model/daily_steps.dart';

class PedometerService {
  const PedometerService();

  Stream<DailySteps> getDailySteps() {
    return DailyPedometer2.dailyStepCountStream.map((event) => DailySteps(
          steps: event.steps,
          calcualtedTime: event.timeStamp,
        ));
  }
}
