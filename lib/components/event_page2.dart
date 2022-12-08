import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class EventPage2 extends StatefulWidget {
  const EventPage2({Key? key}) : super(key: key);

  @override
  State<EventPage2> createState() => _EventPage2State();
}

class _EventPage2State extends State<EventPage2> {
  final eventController = Get.put(EventController());

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      height: 500,
      width: Get.width,
      color: Colors.blue,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: eventController.width * .1,
              right: eventController.width * .1,
            ),
            child: Container(
              height: eventController.height * 0.1,
              width: eventController.width * 0.9,
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
                  ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _size.width < 650
                      ? 02
                      : _size.width < 825
                          ? 02
                          : _size.width < 590
                              ? 01
                              : 3,
                  childAspectRatio: _size.width < 650
                      ? 1.2
                      : _size.width < 825
                          ? 1.2
                          : _size.width < 560
                              ? 1.2
                              : 1.1),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Column();
              },
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
