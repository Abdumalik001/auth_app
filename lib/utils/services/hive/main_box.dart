import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

enum ActiveTheme {
  light(ThemeMode.light),
  dark(ThemeMode.dark),
  system(ThemeMode.system);

  final ThemeMode mode;

  const ActiveTheme(this.mode);
}

enum MainBoxKeys {
  token,
  fcm,
  language,
  theme,
  locale,
  isLogin,
}

mixin class MainBoxMixin {
  static late Box? mainBox;
  static const String _boxName = 'auth_app';

  static Future initHive(String prefixBox) async {
    await Hive.initFlutter();
    mainBox = await Hive.openBox('$prefixBox$_boxName');
  }

  Future addData<T>(MainBoxKeys key, T value) async {
    await mainBox?.put(key.name, value);
  }

  Future removeBox(MainBoxKeys key) async {
    await mainBox?.delete(key.name);
  }

  T getData<T>(MainBoxKeys key) => mainBox?.get(key.name) as T;

  Future logOutBox() async {
    removeBox(MainBoxKeys.isLogin);
    removeBox(MainBoxKeys.token);
  }

  Future closeBox({bool isUnitTest = false}) async {
    try {
      if (mainBox != null) {
        mainBox!.deleteFromDisk();
        mainBox!.clear();
      }
    } catch (e, stackTrace) {
      if (!isUnitTest) {
        print("$e $stackTrace");
      }
    }
  }
}
