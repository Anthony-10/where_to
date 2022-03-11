import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_to/mobile_event/login_mob.dart';
import 'package:where_to/mobile_event/register_mob.dart';

import '../controller.dart';
import 'controller/auth_controller.dart';

class AuthViewMob extends StatefulWidget {
  const AuthViewMob({Key? key}) : super(key: key);

  @override
  _AuthViewMobState createState() => _AuthViewMobState();
}

class _AuthViewMobState extends State<AuthViewMob> {
  final eventController = Get.put(EventController());
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: eventController.width,
          height: eventController.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(44, 9, 111, 1.0),
                Color.fromRGBO(69, 9, 108, 1.0)
              ])),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(children: [
              authController.initialIndex == 0
                  ? AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText('Create\nAccount',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Colors.white),
                            speed: Duration(milliseconds: 80)),
                      ],
                    )
                  : AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText('Welcome Back',
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                                color: Colors.white),
                            speed: Duration(milliseconds: 80)),
                      ],
                    ),
              SizedBox(
                height: 20,
              ),
              authController.initialIndex == 0 ? RegisterPageMob() : LoginMob(),
              authController.initialIndex == 0
                  ? Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'If Already Have an account',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  authController.initialIndex = 1;
                                });
                              },
                              child: Text('Login'))
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't Have an account",
                              style: TextStyle(color: Colors.white)),
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  authController.initialIndex = 0;
                                });
                              },
                              child: Text('Register'))
                        ],
                      ),
                    )
            ]),
          )),
    );
  }
}
