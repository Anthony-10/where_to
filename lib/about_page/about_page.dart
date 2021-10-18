import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white
          /*gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(12, 6, 45, 1.0),
            Color.fromRGBO(23, 8, 33, 1.0)
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
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.grey
                /*gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(116, 92, 227, 1.0),
                      Color.fromRGBO(195, 108, 245, 1.0)
                    ])*/
                ),
          )
        ],
      ),
    );
  }
}
