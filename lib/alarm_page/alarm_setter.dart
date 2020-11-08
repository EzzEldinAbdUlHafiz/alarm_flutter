import 'package:analog_clock/alarm_page/alarm_info.dart';
import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

kkk() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();
}

// class AlarmSetter extends StatefulWidget {
//   @override
//   _AlarmSetterState createState() => _AlarmSetterState();
// }

playSound() {
  AudioCache player = AudioCache();
  player.play('RagBone Man - Human (Official Video).mp3');
}

// class _AlarmSetterState extends State<AlarmSetter> {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: OutlineButton(
//             child: Text('Alarm now'),
//             onPressed: () {
//               AndroidAlarmManager.oneShotAt(
//                   AlarmInfo().alarmDateTime, 0, playSound());
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
AlarmSetter() {
  print(
      '****************************************************plz***************************************************');
  AndroidAlarmManager.oneShotAt(AlarmInfo().getTheTime(), 0, playSound());
}
