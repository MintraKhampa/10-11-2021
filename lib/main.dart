import 'package:flutter/material.dart';
import 'package:test1/State/Dasktop.dart';
// import 'package:test1/State/Login.dart';
import 'package:test1/State/Register.dart';
import 'package:test1/State/smarthome.dart';
import 'package:test1/utility/my_constant.dart';
import 'package:test1/State/swone.dart';
import 'package:test1/State/led1.dart';
import 'package:test1/State/led2.dart';
import 'package:test1/State/led3.dart';

final Map<String, WidgetBuilder> map = {
  '/dasktop': (BuildContext context) => Dasktop(),
  // '/login': (BuildContext context) => Login(),
  '/register': (BuildContext context) => Register(),
  '/smarthome': (BuildContext context) => smarthome(),
  '/swone': (BuildContext context) => FirstSwitch(),
  '/led1': (BuildContext context) => LED1(),
  '/led2': (BuildContext context) => LED2(),
  '/led3': (BuildContext context) => LED3(),
};

String? initlalRoute;

void main() {
  initlalRoute = Myconstat.routeled1;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Myconstat.appName,
      routes: map,
      initialRoute: initlalRoute,
    );
  }
}
