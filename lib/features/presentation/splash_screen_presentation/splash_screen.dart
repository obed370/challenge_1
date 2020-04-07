import 'dart:async';

import 'package:app_test/features/bloc/splash_screen_bloc/splash_screen_bloc.dart';
import 'package:app_test/features/bloc/splash_screen_bloc/splash_screen_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenBloc _bloc;

  final Color pinkColor = Color(0xFFF56E7C);

  @override
  void initState() {
    _bloc = BlocProvider.of<SplashScreenBloc>(context);
    Timer.periodic(Duration(seconds: 10), (timer) {
      _bloc.add(IsLoading(context: context));
    });
    super.initState();
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, state) {
        return Scaffold(
          body: Column(
            children: <Widget>[
              Flexible(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: <Widget>[
                          Text(
                            'A \nFatim',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sacramentoTextTheme()
                                .subtitle1
                                .copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: pinkColor),
                          ),
                          CircularProgressIndicator(
                              backgroundColor: Colors.purple.withOpacity(0.5),
                              strokeWidth: 1)
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 70),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'I delive this',
                        children: <TextSpan>[
                          TextSpan(
                            text: ' UI',
                          ),
                          TextSpan(
                              text: ' to Fatim',
                              style: TextStyle(color: pinkColor)),
                          TextSpan(
                            text: '\nBuilt by',
                          ),
                          TextSpan(
                              text: 'Obed',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600))
                        ],
                        style: GoogleFonts.latoTextTheme()
                            .headline3
                            .copyWith(fontSize: 14),
                      )),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
