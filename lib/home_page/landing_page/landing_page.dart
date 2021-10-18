import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Events Highlight',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'With you all the way',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            )
          ],
        ),
      ),
      /*Image.asset(
        'assets/photo-1.jpg',
      )*/
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren());
      } else {
        return Column(children: pageChildren());
      }
    });
  }
}
