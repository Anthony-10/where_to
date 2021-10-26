import 'package:flutter/material.dart';
import 'about_page_mobile/about_page_mobile.dart';
import 'contactUs_page_mobile/contactUs_page_mobile.dart';
import 'drawer/drawer.dart';
import 'home_page_mobile/home_page_mobile.dart';

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  _MobileNavBarState createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(21, 7, 85, 1.0),
                Color.fromRGBO(119, 15, 198, 1.0)
              ])),
        ),
      ),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageMobile(),
            AboutPageMobile(),
            ContactUsPageMobile()
          ],
        ),
      ),
    );
  }
}
