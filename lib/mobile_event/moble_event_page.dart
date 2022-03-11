import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sprung/sprung.dart';
import 'package:where_to/auth_view/auth_view.dart';
import 'package:where_to/mobile_event/register_mob.dart';

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
                    height: eventController.height,
                    eventController: eventController,
                    width: eventController.width,
                    scaffoldKey: scaffoldKey),
                EventPageMob(
                    height: eventController.height,
                    width: eventController.width),
                ContactPageMob(
                    height: eventController.height,
                    width: eventController.width)
              ],
            ),
            Positioned(
                top: eventController.height * .6 - (eventController.width * .1),
                child: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Container(
                    height: eventController.height * 0.2,
                    width: eventController.width * 0.9,
                    child: Column(
                      children: [
                        Container(
                            height: eventController.height * 0.1,
                            width: eventController.width * 0.9,
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
                          height: eventController.height * 0.1,
                          width: eventController.width * 0.9,
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
                                ]),
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
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromRGBO(44, 9, 111, 1.0),
              Color.fromRGBO(69, 9, 108, 1.0)
            ])),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // body
            SizedBox(
              height: 100,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(HomePageMob(
                      height: eventController.height,
                      eventController: eventController,
                      width: eventController.width,
                      scaffoldKey: scaffoldKey));
                },
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(EventPageMob(
                      height: eventController.height,
                      width: eventController.width));
                },
                child: Text('Event', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 35,
            ),

            Center(
              child: InkWell(
                onTap: () {
                  Get.to(ContactPageMob(
                      height: eventController.height,
                      width: eventController.width));
                },
                child:
                    Text('Contact Us', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 35,
            ),

            Center(
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: InkWell(
                  onTap: () {
                    Get.to(AuthViewMob());
                  },
                  child: Center(
                      child: Text('Register',
                          style: TextStyle(color: Colors.white))),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
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
