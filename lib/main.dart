import 'package:flutter/material.dart';
import 'package:where_to/about_page/about_page.dart';
import 'contactUs_page/contactUs_page.dart';
import 'home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [HomePage(), AboutPage(), ContactUsPage()],
        ),
      ),
    );
  }
}
