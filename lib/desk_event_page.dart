import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:sprung/sprung.dart';

import 'controller.dart';

class DeskEventPage extends StatefulWidget {
  const DeskEventPage({Key? key}) : super(key: key);

  @override
  _DeskEventPageState createState() => _DeskEventPageState();
}

class _DeskEventPageState extends State<DeskEventPage> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

  final texts = ['Home', 'Events', 'ContactUs'];

  final images = [
    'assets/party.jpg',
    'assets/event.jpg',
    'assets/event1.jpg',
    'assets/event2.jpg',
    'assets/event3.jpg'
  ];

  String? value1;
  String? value2;
  String? value3;

  final eventController = Get.put(EventController());
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final hoveredTransform = Matrix4.identity()
      ..translate(8, 0, 0)
      ..scale(1.1);
    final transform1 = isHovered1 ? hoveredTransform : Matrix4.identity();
    final transform2 = isHovered2 ? hoveredTransform : Matrix4.identity();
    final transform3 = isHovered3 ? hoveredTransform : Matrix4.identity();

    final color1 = isHovered1 ? Colors.red : Colors.white;
    final color2 = isHovered2 ? Colors.red : Colors.white;
    final color3 = isHovered3 ? Colors.red : Colors.white;

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
                      color: Colors.black,
                      /*decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/party.jpg',
                        ),
                      )),*/
                      child: CarouselSlider.builder(
                        options: CarouselOptions(
                            viewportFraction: 1,
                            height: height * 0.6,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            autoPlayAnimationDuration: Duration(seconds: 2),
                            aspectRatio: 18 / 8),
                        itemCount: images.length,
                        itemBuilder: (context, index, realIndex) {
                          final image = images[index];
                          return Image.asset(
                            image,
                            fit: BoxFit.cover,
                            height: height * 0.6,
                            width: width,
                          );
                        },
                      ),
                    ),
                    Positioned(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 40),
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
                              IntrinsicHeight(
                                child: Row(
                                  children: [
                                    // start
                                    /*Row(
                                      // start
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: texts
                                            .map(
                                              (e) => MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            onEnter: (event) =>
                                                onEntered1(true),
                                            onExit: (event) =>
                                                onEntered1(false),
                                            child: AnimatedContainer(
                                              curve: Sprung.overDamped,
                                              duration:
                                              Duration(milliseconds: 200),
                                              transform: transform1,
                                              child: Text(
                                                "wewe",
                                                style: TextStyle(color: color1),
                                              ),
                                            ),
                                          ),
                                        )
                                            .toList()),*/
                                    /*ListView.builder(
                                          itemCount: texts.length,
                                          itemBuilder: (context, index) {
                                            final text = texts[index];
                                            return Row(
                                              children: [
                                                MouseRegion(
                                                  cursor: SystemMouseCursors.click,
                                                  onEnter: (event) => onEntered(true),
                                                  onExit: (event) => onEntered(false),
                                                  child: AnimatedContainer(
                                                    curve: Sprung.overDamped,
                                                    duration:
                                                        Duration(milliseconds: 200),
                                                    transform: transform,
                                                    child: Text(
                                                      text,
                                                      style: TextStyle(color: color),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),*/
                                    // end
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
                  width: width,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 150, left: 40, right: 40),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
                              childAspectRatio: 8 / 12,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              color: Colors.black,
                              height: 300,
                              width: 400,
                              child: Image.asset(
                                'assets/event1.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 100,
                              width: 400,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Nairobi Video Speech'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(children: [
                                    Icon(Icons.person),
                                    Text('14.7k followers')
                                  ])
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  height: height * 0.7,
                  width: width,
                  color: Colors.black,
                )
              ],
            ),
            Positioned(
                top: height * .7 - (width * .1),
                child: Padding(
                  padding: EdgeInsets.only(left: 60),
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        items: eventController.events
                                            .map(eventController.buildMenuItem)
                                            .toList(),
                                        borderRadius: BorderRadius.circular(12),
                                        value: value1,
                                        onChanged: (value) => setState(() {
                                          print(this.value1);
                                          this.value1 = value;
                                          print(this.value1);
                                        }),
                                        icon: Icon(Icons.arrow_drop_down,
                                            color: Colors.black),
                                        iconSize: 25,
                                        hint: Text('Select Event',
                                            style:
                                                TextStyle(color: Colors.black)),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                  ),
                                  Container(
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: value2,
                                        onChanged: (value) => setState(() {
                                          this.value2 = value;
                                        }),
                                        icon: Icon(Icons.arrow_drop_down,
                                            color: Colors.black),
                                        iconSize: 25,
                                        items: eventController.location
                                            .map(eventController.buildMenuItem)
                                            .toList(),
                                        hint: Text(
                                          'Select Location',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        TextButton(
                                            onPressed: () => pickDate(context),
                                            child: Text(
                                              eventController.getText(),
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.black,
                                          size: 25,
                                        )
                                      ],
                                    ),
                                  ),
                                ]
                                /*Text('wew'),
                                VerticalDivider(
                                  color: Colors.black,
                                ),
                                Text('wew'),
                                VerticalDivider(
                                  color: Colors.black,
                                ),
                                Text('wew'),*/
                                ),
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

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: eventController.date ?? initialDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (newDate == null) return;
    setState(() {
      eventController.date = newDate;
    });
  }

  void onEntered1(bool isHovered) => setState(() {
        this.isHovered1 = isHovered;
      });
  void onEntered2(bool isHovered) => setState(() {
        this.isHovered2 = isHovered;
      });
  void onEntered3(bool isHovered) => setState(() {
        this.isHovered3 = isHovered;
      });
}
