import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {}),
            ],
          ),
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
