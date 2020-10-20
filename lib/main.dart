import 'package:analog_clock/alarm_page/theme.dart';
import 'package:analog_clock/models/my_theme_provider.dart';
import 'package:analog_clock/screens/home_screen.dart';
import 'package:analog_clock/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      home: LoadingScreen(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.z
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyThemeModel(),
        child: Consumer<MyThemeModel>(
          builder: (context, theme, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Analog Clock',
            theme: themeData(context),
            darkTheme: darkThemeData(context),
            themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            home: HomeScreen(),
          ),
        ));
  }
}
