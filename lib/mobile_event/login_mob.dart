import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginMob extends StatefulWidget {
  const LoginMob({Key? key}) : super(key: key);

  @override
  _LoginMobState createState() => _LoginMobState();
}

class _LoginMobState extends State<LoginMob> {
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
              height: Get.height * 0.02,
            ),
            TextButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot PassWord?'))),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Sign In')),
          ],
        ),
      ),
    );
  }
}
