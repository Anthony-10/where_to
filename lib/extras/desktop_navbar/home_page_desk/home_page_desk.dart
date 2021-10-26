import 'package:flutter/material.dart';
import 'landing_page_desk/landing_page_desk.dart';
import 'nav_bar_desk/nav_bar_desk.dart';

class HomePageDesk extends StatefulWidget {
  const HomePageDesk({Key? key}) : super(key: key);

  @override
  _HomePageDeskState createState() => _HomePageDeskState();
}

class _HomePageDeskState extends State<HomePageDesk> {
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
          NavBarDesk(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: LandingPageDesk(),
          )
        ],
      ),
    );
  }
}
