import 'package:flutter/material.dart';

class ContactUsPageMobile extends StatefulWidget {
  const ContactUsPageMobile({Key? key}) : super(key: key);

  @override
  _ContactUsPageMobileState createState() => _ContactUsPageMobileState();
}

class _ContactUsPageMobileState extends State<ContactUsPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(12, 6, 45, 1.0),
            Color.fromRGBO(222, 183, 239, 1.0)
          ])),
      child: Padding(
        padding: const EdgeInsets.only(left: 40, top: 30),
        child: Text(
          'Contact Us',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
