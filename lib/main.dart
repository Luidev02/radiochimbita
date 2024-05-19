import 'package:radiochimbita/screens/Launch_Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radiochimbita/screens/Launch_Loading.dart';
import 'package:radiochimbita/screens/login/Login.dart';
import 'package:radiochimbita/screens/login/Register.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    const String appName = 'Radio Chimbita';
    return CupertinoApp(
      title: appName,
      routes: {
        '/' : (context) => LaunchLoading(),
        '/pre-login': (context) => Launch_Login(),
        '/login': (context) => Routes_Login(),
        '/register': (context) => Routes_Register()

      },
      initialRoute: '/',
    );
  }
}
