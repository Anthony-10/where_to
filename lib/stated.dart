import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  bool isHovered = false;

  static final texts = ['Home', 'Events', 'ContactUs'];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final hoveredTransform = Matrix4.identity()
      ..translate(8, 0, 0)
      ..scale(1.1);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    final color = isHovered ? Colors.red : Colors.white;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: height * 0.6,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/party.jpg',
                        ),
                      )),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 40),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Where To',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 30),
                              ),
                              Row(
                                children: [
                                  IntrinsicWidth(
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      onEnter: (event) => onEntered(true),
                                      onExit: (event) => onEntered(false),
                                      child: AnimatedContainer(
                                        curve: Sprung.overDamped,
                                        duration: Duration(milliseconds: 200),
                                        transform: transform,
                                        child: Text(
                                          'Home',
                                          style: TextStyle(color: color),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onEnter: (event) => onEntered(true),
                                    onExit: (event) => onEntered(false),
                                    child: AnimatedContainer(
                                      curve: Sprung.overDamped,
                                      duration: Duration(milliseconds: 200),
                                      transform: transform,
                                      child: Text(
                                        'Events',
                                        style: TextStyle(color: color),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    onEnter: (event) => onEntered(true),
                                    onExit: (event) => onEntered(false),
                                    child: AnimatedContainer(
                                      curve: Sprung.overDamped,
                                      duration: Duration(milliseconds: 200),
                                      transform: transform,
                                      child: Text(
                                        'Contact Us',
                                        style: TextStyle(color: color),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    'Register',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 1,
                                    width: 20,
                                  ),
                                  Text(
                                    'Login',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: height * 0.7,
                  color: Colors.blue,
                ),
              ],
            ),
            Positioned(
                top: height * .7 - (width * .1),
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                    height: height * 0.2,
                    width: width * 0.9,
                    child: Column(
                      children: [
                        Container(
                            height: height * 0.1,
                            width: width * 0.9,
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Text(
                                'Live your best life',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            )),
                        Container(
                          height: height * 0.1,
                          width: width * 0.9,
                          color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('wew'),
                              VerticalDivider(
                                color: Colors.black,
                              ),
                              Text('wew'),
                              VerticalDivider(
                                color: Colors.black,
                              ),
                              Text('wew'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
