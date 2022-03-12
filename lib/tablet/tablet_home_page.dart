import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class TabletHomePage extends StatefulWidget {
  const TabletHomePage({Key? key}) : super(key: key);

  @override
  _TabletHomePageState createState() => _TabletHomePageState();
}

class _TabletHomePageState extends State<TabletHomePage> {
  final eventController = Get.put(EventController());

  var height = Get.height;
  var width = Get.width;
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
                fit: BoxFit.fill,
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
          top: eventController.height * .53,
          left: eventController.width * .1,
          right: eventController.width * .1,
          child: Container(
            height: eventController.height * 0.07,
            width: eventController.width * 0.95,
            color: Colors.white,
            child: Text(
              'Live your best life',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: RichText(
              text: TextSpan(
                  text: 'Where ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                  children: [
                    TextSpan(
                      text: 'To tab',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 30),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
