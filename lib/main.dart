import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_to/tablet/tablet_page.dart';
import 'desk_event/desk_event_page.dart';
import 'mobile_event/moble_event_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

int smallScreenWidth = 600;
int largeScreenWidth = 950;

class MainPage extends StatelessWidget {
  /*final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;*/

  const MainPage({
    Key? key,
    /*required this.largeScreen,
      required this.mediumScreen,
      required this.smallScreen*/
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      Get.height < smallScreenWidth;
  static bool isLargeScreen(BuildContext context) =>
      Get.height < largeScreenWidth;
  static bool isMediumScreen(BuildContext context) =>
      Get.height >= smallScreenWidth && Get.width <= largeScreenWidth;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double maxWidth = constraints.maxWidth;
      if (maxWidth > largeScreenWidth) {
        return DeskEventPage();
      } else if (maxWidth >= smallScreenWidth && maxWidth <= largeScreenWidth) {
        return TabletPage();
      } else {
        return MobileEventPage();
      }
    });
  }
}
