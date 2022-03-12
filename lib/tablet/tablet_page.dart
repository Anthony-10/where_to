import 'package:flutter/material.dart';
import 'package:where_to/tablet/tablet_contact_page.dart';
import 'package:where_to/tablet/tablet_event_page.dart';
import 'package:where_to/tablet/tablet_home_page.dart';

class TabletPage extends StatefulWidget {
  const TabletPage({Key? key}) : super(key: key);

  @override
  _TabletPageState createState() => _TabletPageState();
}

class _TabletPageState extends State<TabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                TabletHomePage(),
                TabletEventPage(),
                TabletContactPage(),
              ],
            ),
            /*Positioned(
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
                )),*/
          ],
        ),
      ),
    );
  }
}
