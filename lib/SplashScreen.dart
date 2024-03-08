import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kosher_climate_app_flutter/resources/Resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  startTime() async {
    return Timer(
        Duration(seconds: 3),
            () => Navigator.pushNamed(context, '/loginpage')
    );
  }

  @override
  void initState() {
    // Future.delayed(
    //   const Duration(seconds: 3),
    //       () {
    //         Navigator.pushNamed(context, '/loginpage');
    //   },
    // );
    // initState
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
       child: Column(
         children: <Widget>[
           Expanded(
             child: Center(
               child: Image.asset("assets/kosher.png"),
             ),
           ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Text(StringResources.versionname,
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                  Text(StringResources.developby,
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                ],
              )
            ),
          )
         ],
       ),
     ),
    );
  }
}
