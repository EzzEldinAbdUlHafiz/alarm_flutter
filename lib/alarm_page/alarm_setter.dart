import 'package:analog_clock/alarm_page/alarm_info.dart';
import 'package:android_alarm_manager/android_alarm_manager.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

kkk() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AndroidAlarmManager.initialize();
}

class AlarmSetter extends StatefulWidget {
  @override
  _AlarmSetterState createState() => _AlarmSetterState();
}

playSound() {
  final player = AudioCache();
  player.play('RagBone Man - Human (Official Video).mp3');
}

class _AlarmSetterState extends State<AlarmSetter> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: OutlineButton(
            child: Text('Alarm now'),
            onPressed: () {
              AndroidAlarmManager.oneShotAt(
                  , 0, playSound());
            },
          ),
        ),
      ),
    );
  }
}
