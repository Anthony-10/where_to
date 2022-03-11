import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class RegisterPageMob extends StatefulWidget {
  const RegisterPageMob({Key? key}) : super(key: key);

  @override
  _RegisterPageMobState createState() => _RegisterPageMobState();
}

class _RegisterPageMobState extends State<RegisterPageMob> {
  final eventController = Get.put(EventController());

  final TextEditingController _userEmail = TextEditingController();
  final TextEditingController _userPassWord = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.6,
      width: Get.width * 0.5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 30.0),
        child: Column(
          children: [
            TextFormField(
              key: const ValueKey("UserEmail"),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "Email",
              ),
              controller: _userEmail,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: true,
              key: const ValueKey("UserPassWord"),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "PassWord",
              ),
              controller: _userPassWord,
            ),
            SizedBox(
              height: Get.height * 0.09,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
          ],
        ),
      ),
    );
  }
}
