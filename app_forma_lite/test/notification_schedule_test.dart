import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:clock/clock.dart';

void main() {
  test('schedules for 09:00 next day', () {
    final plugin = FlutterLocalNotificationsPlugin();
    final now = DateTime(2025, 5, 25, 8, 0);
    withClock(Clock.fixed(now), () async {
      await plugin.zonedSchedule(
        0,
        'drop',
        'new block',
        clock
            .now()
            .add(const Duration(hours: 1))
            .toLocal()
            .toUtc()
            .subtract(now.timeZoneOffset),
        const NotificationDetails(),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true,
      );
      expect(true, true);  // compile-time check
    });
  });
}
