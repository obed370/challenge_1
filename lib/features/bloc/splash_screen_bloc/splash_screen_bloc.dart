import 'package:app_test/features/bloc/splash_screen_bloc/splash_screen_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  @override
  SplashScreenState get initialState => InitialState();

  @override
  Stream<SplashScreenState> mapEventToState(SplashScreenEvent event) async* {
    if (event is IsLoading) {
      await getUserLocation();
      await _pushToAnotherScreen(event.context);
    }
  }

  void _pushToAnotherScreen(BuildContext context) {
    Navigator.pushNamed(context, '/second');
  }

  Future<void> getUserLocation() async {
    GeolocationStatus status =
        await Geolocator().checkGeolocationPermissionStatus();
    print(status.value);
  }
}
