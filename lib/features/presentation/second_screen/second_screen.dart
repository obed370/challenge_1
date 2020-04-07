import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  final Color pinkColor = Color(0xFFF56E7C);
  final Color whiteText = Colors.white;
  final Color textContentColor = Colors.black.withOpacity(0.8);
  final Widget spacerO = SizedBox(
    height: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/sebastian-leon-prado-3ecCnoNQ13o-unsplash.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
              pinkColor.withOpacity(0.2),
              Colors.black,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Enjoy every\n moment with us!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSerif(
                        fontSize: 30, color: Colors.white),
                  ),
                ),
                spacerO,
                FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/third');
                    },
                    color: this.pinkColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 45, vertical: 30),
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.latoTextTheme().caption.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )),
                spacerO,
                Text(
                  'Create an account',
                  style: GoogleFonts.latoTextTheme()
                      .caption
                      .copyWith(color: whiteText),
                ),
                Container(
                  color: whiteText,
                  child: Opacity(
                    opacity: 0,
                    child: Text(
                      'Create an account',
                      style: GoogleFonts.dMSerifTextTextTheme()
                          .caption
                          .copyWith(color: whiteText),
                    ),
                  ),
                  height: 1,
                ),
                spacerO,
              ],
            ),
          )
        ],
      ),
    ));
  }
}
