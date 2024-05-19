  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/rendering.dart';
  import 'package:flutter/widgets.dart';
  import 'package:google_fonts/google_fonts.dart';

  class Routes_Login extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return CupertinoApp(
        home: CupertinoPageScaffold(
          
          navigationBar: CupertinoNavigationBar(
            backgroundColor: Colors.transparent,
            border: Border.all(color: Colors.transparent), // Quitar la línea gris
            middle: Text(
              'Iniciar Sesión',
              style: GoogleFonts.inter(
                textStyle: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            leading: IconButton(
              icon: Image.asset('assets/images/volver.png'),
              onPressed: () {
                Navigator.of(context).pop();
              })),
          backgroundColor: Colors.white,
          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 110),
                  Center(),
                  Container(
                    width: 320,
                    child: Text(
                      'Bienvenido,',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: const Color.fromRGBO(54, 49, 48, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 320,
                    child: Text(
                      'Por Favor ingresa tus datos para continuar',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: const Color.fromRGBO(54, 49, 48, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 58),
                  Container(
                    width: 320,
                    child: Text(
                      'Usuario o Correo Electronico',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: const Color.fromRGBO(54, 49, 48, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 321,
                    height: 45,
                    child: CupertinoTextField(
                      placeholder: 'Usuario',
                      placeholderStyle:
                          TextStyle(color: const Color.fromRGBO(232, 228, 228, 1)),
                      style: TextStyle(
                        color: const Color.fromRGBO(232, 228, 228, 1),
                        fontSize: 17,
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 153, 153, 1),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 29),
                  Container(
                    width: 320,
                    child: Text(
                      'Contraseña',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: const Color.fromRGBO(54, 49, 48, 1),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 321,
                    height: 45,
                    child: CupertinoTextField(
                      placeholder: 'Contraseña',
                      placeholderStyle:
                          TextStyle(color: const Color.fromRGBO(232, 228, 228, 1)),
                      style: TextStyle(
                        color: const Color.fromRGBO(232, 228, 228, 1),
                        fontSize: 17,
                      ),
                      obscureText: true,
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(255, 153, 153, 1),
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 47),
                  Container(
                    width: 186,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Color.fromRGBO(255, 51, 51, 1),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                          Color.fromRGBO(237, 58, 58, 1),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Iniciar Sesión',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.leagueSpartan(
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ), // Texto dentro del TextButton
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: Text(
                      '¿Olvidaste tu contraseña?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.leagueSpartan(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(54, 49, 48, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 99),
                  Text(
                    'O Regístrate con',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.leagueSpartan(
                      textStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(54, 49, 48, 1),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 80,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Image.asset(
                            'assets/images/facebook.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Image.asset(
                            'assets/images/google.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 195,
                    child: Row(
                      children: [
                        Text(
                          '¿No tienes una cuenta?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.leagueSpartan(
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(54, 49, 48, 1),
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Text(
                            'Regístrate',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.leagueSpartan(
                              textStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
  }