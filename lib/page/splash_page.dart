import 'dart:ui';
import 'package:customerglu_plugin/customerglu_plugin.dart';
import 'package:customerglu_plugin/refreshWidget.dart';
import 'package:flutter/material.dart';

import '../core/color.dart';
import '../widgets/bottom_nav.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CGScreenDetector(
      classname: 'Splash',
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 35),
            const Text(
              'Let\'s plant with us',
              style: TextStyle(
                fontSize: 22.0,
                letterSpacing: 1.8,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Bring nature home',
              style: TextStyle(
                color: grey,
                fontSize: 16,
                letterSpacing: 1.8,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 450,
              width: 450,
              child: Image.asset('assets/images/Asset1.png'),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: () {
                registerUserWithCG(context);

              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Create an account',
                style: TextStyle(
                  color: black.withOpacity(0.7),
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: black.withOpacity(0.4),
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> registerUserWithCG(context) async {
    CustomergluPlugin.gluSDKDebuggingMode(true);
    var userData = {
      'userId': "glutest-87"
    };
    bool isRegistered = await CustomergluPlugin.registerDevice(userData);
     if (isRegistered){
       print("User Registered With CG");
       Navigator.push(
           context,
           MaterialPageRoute(
               builder: (builder) => const BottomNavBar()));
     }
  }
}