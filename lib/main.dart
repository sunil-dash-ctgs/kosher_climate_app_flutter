import 'package:flutter/material.dart';
import 'package:kosher_climate_app_flutter/HomeScreen.dart';
import 'package:kosher_climate_app_flutter/LanguageScreen.dart';
import 'package:kosher_climate_app_flutter/LoginScreen.dart';
import 'package:kosher_climate_app_flutter/RegisterScreen.dart';
import 'package:kosher_climate_app_flutter/SplashScreen.dart';
import 'package:kosher_climate_app_flutter/farmeronboarding/PloatActivity.dart';

import 'DataYear.dart';
import 'farmeronboarding/FarmerOnBoarding.dart';
import 'farmeronboarding/LocationActivity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        '/' : (context) => const PloatActivity(),
        "/loginpage" : (context) => const LoginScreen(),
        "/registerpage" : (context) => const RegisterScreen(),
        "/languagepage" : (context) => const LanguageScreen(),
        "/homepage" : (context) => const HomeScreen(),
        "/datayearpage" : (context) => const DataYear(),
        "/onBoardingpage" : (context) => const FarmerOnBoarding(),
        "/locationpage" : (context) => const LocationActivity(),
        "/ploatpage" : (context) => const PloatActivity(),
      },
    );
  }
}

