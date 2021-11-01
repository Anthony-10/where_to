import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprung/sprung.dart';

import '../controller.dart';
import 'contact_page_mob.dart';
import 'event_page_mob.dart';
import 'home_page_mob.dart';

class MobileEventPage extends StatefulWidget {
  const MobileEventPage({Key? key}) : super(key: key);

  @override
  _MobileEventPageState createState() => _MobileEventPageState();
}

class _MobileEventPageState extends State<MobileEventPage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;

  static final texts = ['Home', 'Events', 'ContactUs'];
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
      endDrawer: drawer(),
      key: scaffoldKey,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                HomePageMob(
                    height: height,
                    eventController: eventController,
                    width: width,
                    scaffoldKey: scaffoldKey),
                EventPageMob(height: height, width: width),
                ContactPageMob(height: height, width: width)
              ],
            ),
            Positioned(
                top: height * .6 - (width * .1),
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
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
                                        value: eventController.value1,
                                        onChanged: (value) => setState(() {
                                          print(this.eventController.value1);
                                          this.eventController.value1 = value;
                                          print(this.eventController.value1);
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
                                        value: eventController.value2,
                                        onChanged: (value) => setState(() {
                                          this.eventController.value2 = value;
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

  Widget drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child:
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back))),
          // header
          UserAccountsDrawerHeader(
            accountName: const Text('anthony'),
            accountEmail: const Text('anthony@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: const CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            //     decoration: BoxDecoration(color: Colors.white),
          ),

          // body
          InkWell(
            child: ListTile(
              onTap: () {},
              title: const Text('Register'),
              leading: const Icon(
                Icons.favorite,
                color: Colors.blue,
              ),
            ),
          ),

          InkWell(
            child: ListTile(
              onTap: () {},
              title: const Text('Login'),
              leading: const Icon(
                Icons.shop,
                color: Colors.blue,
              ),
            ),
          ),

          InkWell(
            child: ListTile(
              onTap: () {},
              title: const Text('Home'),
              leading: const Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
          ),

          InkWell(
            child: ListTile(
              onTap: () {},
              title: const Text('About'),
              leading: const Icon(
                Icons.settings,
                color: Colors.blue,
              ),
            ),
          ),

          InkWell(
            child: ListTile(
              onTap: () {},
              title: const Text('Contact Us'),
              leading: const Icon(
                Icons.phone,
                color: Colors.blue,
              ),
            ),
          ),
        ],
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
