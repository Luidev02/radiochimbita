import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radiochimbita/screens/Launch_Login.dart';

class LaunchLoading extends StatefulWidget {
  @override
  _LaunchLoadingState createState() => _LaunchLoadingState();
}

class _LaunchLoadingState extends State<LaunchLoading> {
  Color _color = Colors.white; // Color inicial
  int _counter = 5;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer?.cancel();
          _navigateToLogin();
        }
      });
    });
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => Launch_Login()),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const String appName = 'Radio Chimbita';
    return CupertinoApp(
      title: appName,
      home: CupertinoPageScaffold(
        backgroundColor: Color.fromRGBO(255, 51, 51, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                _color, // Usa el color actual del estado
                BlendMode.modulate,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/station.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Transform.translate(
              offset: Offset(-85, 0),
              child: Text(
                'Radio',
                style: GoogleFonts.inter(textStyle: TextStyle(fontSize: 30, color: _color)),
              ),
            ),
            Text(
              'Chimbita',
              style: GoogleFonts.knewave(
                textStyle: TextStyle(fontSize: 50, color: _color),
              ),
            )
          ],
        ),
      ),
    );
  }
}



