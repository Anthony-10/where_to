import 'package:flutter/material.dart';

import 'components/events_page.dart';
import 'components/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [header(), EventsPage()],
        ),
      ),
    );
  }
}
