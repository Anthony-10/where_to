import 'package:flutter/material.dart';

class ContactUsPageDesk extends StatelessWidget {
  const ContactUsPageDesk({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.4,
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(30, 11, 69, 1.0),
            Color.fromRGBO(40, 9, 57, 1.0)
          ])),
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Contact Us',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )),
      ),
    );
  }
}
