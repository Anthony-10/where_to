import 'package:flutter/material.dart';
import 'desk_event/desk_event_page.dart';
import 'mobile_event/moble_event_page.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DeskEventPage();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DeskEventPage();
      } else {
        return MobileEventPage();
      }
    });
  }
}
