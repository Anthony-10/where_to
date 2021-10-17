import 'package:flutter/material.dart';
import 'package:where_to/nav_bar/nav_bar.dart';

import 'landing_page/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                    Color.fromRGBO(195, 20, 50, 1.0),
                    Color.fromRGBO(36, 11, 54, 1.0)
                  ])),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    NavBar(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: LandingPage(),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
