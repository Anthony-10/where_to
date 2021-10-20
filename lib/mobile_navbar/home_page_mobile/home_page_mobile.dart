import 'package:flutter/material.dart';

import 'landing_page_mobile/landing_page_mobile.dart';
import 'nav_bar_mobile/nav_bar_mobile.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(21, 7, 85, 1.0),
            Color.fromRGBO(119, 15, 198, 1.0)
          ])),
      /*decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          'assets/party.jpg',
        ),
      )),*/
      child: Column(
        children: [
          NavBarMobile(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: LandingPageMobile(),
          )
        ],
      ),
    );
  }
}
