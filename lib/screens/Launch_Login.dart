import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radiochimbita/screens/login/Login.dart';

class Launch_Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 190,
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black, // Cambia aquí el color que desees
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
                style: GoogleFonts.inter(
                    textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                )),
              ),
            ),
            Text(
              'Chimbita',
              style: GoogleFonts.knewave(
                textStyle: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              width: 264,
              child: Text(
                'La radio colombiana mas chimba , Sientate sube el volumen y disfruta',
                textAlign: TextAlign.center,
                style: GoogleFonts.leagueSpartan(
                    textStyle: TextStyle(fontSize: 14, color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 61,
            ),

            // codigo para Boton de Login
            Container(
              width: 264,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color.fromRGBO(255, 51, 51, 1),
              ),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all(Color.fromRGBO(237, 58, 58, 1)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                child: Text(
                  'Iniciar Sesión',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.leagueSpartan(
                      textStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )),
                ), // Texto dentro del TextButton
              ),
            ),
            SizedBox(
              height: 17,
            ),

            Container(
              width: 264,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                      Color.fromRGBO(241, 238, 238, 1)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Text(
                  'Registrarse',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.leagueSpartan(
                    textStyle: TextStyle(
                      fontSize: 25,
                      color: Color.fromRGBO(75, 69, 68, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
