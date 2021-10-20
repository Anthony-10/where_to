import 'package:flutter/material.dart';
import 'package:where_to/desktop_navbar/about_page_desk/about_page_desk.dart';
import 'package:where_to/desktop_navbar/contactUs_page_desk/contactUs_page_desk.dart';

import 'home_page_desk/home_page_desk.dart';

class DesktopNavbar extends StatefulWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [HomePageDesk(), AboutPageDesk(), ContactUsPageDesk()],
        ),
      ),
    );
  }
}
