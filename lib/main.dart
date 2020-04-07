import 'package:app_test/features/presentation/fourth_screen/fourth_screen.dart';
import 'package:app_test/features/presentation/second_screen/second_screen.dart';
import 'package:app_test/features/presentation/splash_screen_presentation/splash_screen.dart';
import 'package:app_test/features/presentation/third_screen/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/bloc/splash_screen_bloc/splash_screen_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          accentColor: Color(0xFFF56E7C),
          primarySwatch: Colors.indigo,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/second': (context) => SecondScreen(),
          '/third': (context) => ThirdScreen(),
          '/last': (context) => ForthScreen()
        },
      ),
    );
  }
}
