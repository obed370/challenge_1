import 'package:flutter/cupertino.dart';

abstract class SplashScreenEvent {}

class IsLoading extends SplashScreenEvent {
  BuildContext context;

  IsLoading({this.context});
}
