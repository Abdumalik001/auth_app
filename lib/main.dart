import 'dart:async';

import 'package:auth_app_clone/app.dart';
import 'package:auth_app_clone/utils/services/firebase/firebase.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await FirebaseServices.init();
    return SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    ).then((_) => runApp(App()));
  }, (error, stack) async {
    FirebaseCrashlytics.instance.recordError(error, stack);
  });
}
