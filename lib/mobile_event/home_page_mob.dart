import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../controller.dart';

class HomePageMob extends StatelessWidget {
  const HomePageMob({
    Key? key,
    required this.height,
    required this.eventController,
    required this.width,
    required this.scaffoldKey,
  }) : super(key: key);

  final double height;
  final EventController eventController;
  final double width;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height * 0.6,
          child: CarouselSlider.builder(
            options: CarouselOptions(
                viewportFraction: 1,
                height: height * 0.6,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 2),
                aspectRatio: 18 / 8),
            itemCount: eventController.images.length,
            itemBuilder: (context, index, realIndex) {
              final image = eventController.images[index];
              return Image.asset(
                image,
                fit: BoxFit.cover,
                height: height * 0.6,
                width: width,
              );
            },
          ),
          /*  decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/party.jpg',
            ),
          )),*/
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Where ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30),
                        children: [
                          TextSpan(
                            text: 'To',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30),
                          ),
                        ]),
                  ),
                  IconButton(
                      iconSize: width * .08,
                      onPressed: () =>
                          scaffoldKey.currentState!.openEndDrawer(),
                      icon: Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                      ))
                  /*IntrinsicHeight(
                    child: Row(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (event) => onEntered1(true),
                          onExit: (event) => onEntered1(false),
                          child: AnimatedContainer(
                            curve: Sprung.overDamped,
                            duration: Duration(milliseconds: 200),
                            transform: transform1,
                            child: Text(
                              'Home',
                              style: TextStyle(color: color1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (event) => onEntered2(true),
                          onExit: (event) => onEntered2(false),
                          child: AnimatedContainer(
                            curve: Sprung.overDamped,
                            duration: Duration(milliseconds: 200),
                            transform: transform2,
                            child: Text(
                              'Events',
                              style: TextStyle(color: color2),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (event) => onEntered3(true),
                          onExit: (event) => onEntered3(false),
                          child: AnimatedContainer(
                            curve: Sprung.overDamped,
                            duration: Duration(milliseconds: 200),
                            transform: transform3,
                            child: Text(
                              'Contact Us',
                              style: TextStyle(color: color3),
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
                    ),
                  )*/
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
