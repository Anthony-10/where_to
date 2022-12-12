import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:where_to/responsive.dart';

import '../constants.dart';
import '../controller.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final eventController = Get.put(EventController());

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      /*height: Get.height,*/
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
          Responsive(
            mobile: Expanded(
              child: EventsImage(
                crossAxiscount: _size.width < 650 ? 02 : 3,
                aspectRatio: _size.width < 650 ? 1.2 : 1.1,
              ),
            ),
            tablet: Expanded(
              child: EventsImage(
                crossAxiscount: _size.width < 825 ? 02 : 3,
                aspectRatio: _size.width < 825 ? 1.2 : 1.1,
              ),
            ),
            desktop: Expanded(
              child: EventsImage(
                crossAxiscount: _size.width < 590 ? 01 : 3,
                aspectRatio: _size.width < 560 ? 1.2 : 1.1,
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

class EventsImage extends StatelessWidget {
  const EventsImage({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 1.1,
  }) : super(key: key);

  final int crossAxiscount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxiscount,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(kPadding / 2),
        child: InkWell(
          onTap: () {},
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/image1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "wwwwwwwwwwwwww",
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      /*Padding(
        padding: const EdgeInsets.all(kPadding / 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            'assets/image1.png',
            fit: BoxFit.cover,
          ),
        ),
      )*/
      itemCount: 12,
    );
    /*GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxiscount, childAspectRatio: aspectRatio),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              width: 250,
              height: 200,
              color: Colors.black,
              child: ClipRRect(
                child: Image.asset(
                  'assets/image1.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 250,
              height: 150,
              color: Colors.grey[350],
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
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
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      IconButton(
                          icon: Icon(Icons.person_outline), onPressed: () {}),
                      Text('14.7k followers'),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Ticket')))
                  ],
                ),
              ),
            )
          ],
        );
      },
    );*/
  }
}
