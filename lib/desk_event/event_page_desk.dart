import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class EventsPageDesk extends StatefulWidget {
  const EventsPageDesk({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<EventsPageDesk> createState() => _EventsPageDeskState();
}

class _EventsPageDeskState extends State<EventsPageDesk> {
  final eventController = Get.put(EventController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: eventController.width * .1,
                right: eventController.width * .1),
            child: Container(
              height: eventController.height * 0.1,
              width: eventController.width * 0.95,
              color: Colors.red,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          icon:
                              Icon(Icons.arrow_drop_down, color: Colors.black),
                          iconSize: 25,
                          hint: Text('Select Event',
                              style: TextStyle(color: Colors.black)),
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
                          icon:
                              Icon(Icons.arrow_drop_down, color: Colors.black),
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
                                style: TextStyle(color: Colors.black),
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
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
            child: Container(
              height: eventController.height * 0.8,
              width: eventController.width * 0.9,
              color: Colors.grey[200],
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 5 / 6,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        color: Colors.black,
                        height: widget.height * .3,
                        width: widget.width * .4,
                        child: Image.asset(
                          'assets/event1.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        color: Colors.grey[350],
                        height: widget.height * .15,
                        width: widget.width * .4,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nairobi Video Speech',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Fri, Nov 12, 8:00PM'),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                        icon: Icon(Icons.person_outline),
                                        onPressed: () {}),
                                    Text('14.7k followers'),
                                  ]),
                              /*SizedBox(
                                height: 10,
                              ),
                              MaterialButton(
                                  color: Colors.pink,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  child: Text(
                                    'Tickets',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    */ /* Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => print(this.value1);),
                                    );*/ /*
                                  }),*/
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
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
}
