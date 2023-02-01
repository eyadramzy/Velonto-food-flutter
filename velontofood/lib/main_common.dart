import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velontofood/main.dart';


import 'core/providers.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPrefs = await SharedPreferences.getInstance();



  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(ProviderScope(overrides: [
      baseUrl.overrideWithValue("https://fakestoreapi.com/"),
      sharedPreferences.overrideWithValue(sharedPrefs),
    ], child: const MyApp()));
  });
}