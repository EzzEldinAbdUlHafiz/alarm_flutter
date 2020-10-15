//import 'package:analog_clock/alarm_page/theme_data.dart';
import 'package:analog_clock/alarm_page/alarm_info.dart';
import 'package:analog_clock/alarm_page/menu_info.dart';
import 'package:analog_clock/alarm_page/enums.dart';
/*
List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock,
      title: 'Clock', imageSource: 'assets/clock_icon.png'),
  MenuInfo(MenuType.alarm,
      title: 'Alarm', imageSource: 'assets/alarm_icon.png'),

];
*/

List<AlarmInfo> alarms = [
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 1)),
      title: 'Office',
      gradientColorIndex: 0),
  AlarmInfo(
      alarmDateTime: DateTime.now().add(Duration(hours: 2)),
      title: 'Sport',
      gradientColorIndex: 1),
];
