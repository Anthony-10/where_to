import 'package:flutter/material.dart';

class AboutPageDesk extends StatefulWidget {
  const AboutPageDesk({Key? key}) : super(key: key);

  @override
  _AboutPageDeskState createState() => _AboutPageDeskState();
}

class _AboutPageDeskState extends State<AboutPageDesk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.grey[350]
          /* gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(124, 111, 227, 1.0),
            Color.fromRGBO(176, 126, 208, 1.0)
          ])*/
          ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 30, bottom: 30),
            child: Text(
              'About',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
