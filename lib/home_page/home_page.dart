import 'package:flutter/material.dart';

import 'landing_page/landing_page.dart';
import 'nav_bar/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage(
          'assets/photo-1.jpg',
        ),
      )),
      child: Column(
        children: [
          NavBar(),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: LandingPage(),
          )
        ],
      ),
    );
  }
}
