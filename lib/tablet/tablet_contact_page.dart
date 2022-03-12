import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class TabletContactPage extends StatefulWidget {
  const TabletContactPage({Key? key}) : super(key: key);

  @override
  _TabletContactPageState createState() => _TabletContactPageState();
}

class _TabletContactPageState extends State<TabletContactPage> {
  final eventController = Get.put(EventController());

  final TextEditingController _Email = TextEditingController();

  final TextEditingController _Message = TextEditingController();

  final TextEditingController _Name = TextEditingController();

  var height = Get.height;
  var width = Get.width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.8,
      width: width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color.fromRGBO(30, 11, 69, 1.0),
            Color.fromRGBO(40, 9, 57, 1.0)
          ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.7,
            width: width * 0.4,
            color: Colors.blue[100],
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact Us',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 90,
                    ),
                    ListTile(
                      leading: Icon(Icons.email_outlined),
                      title: Text('info@getintouch.we'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(Icons.phone_outlined),
                      title: Text('+254 722345476'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Icon(Icons.watch_later_outlined),
                      title: Text('9am - 10pm'),
                    ),
                  ]),
            ),
          ),
          Container(
            height: height * 0.7,
            width: width * 0.5,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.only(
                  left: width * 0.04, top: height * 0.06, right: width * 0.04),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get in Touch\n',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text('\nFeel free to contact us any time. We will get\n'
                        ' back to you as soon as you can'),
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(20.0, 40.0, 40.0, 30.0),
                      child: Column(
                        children: [
                          TextFormField(
                            key: const ValueKey("Name"),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: "Name",
                            ),
                            controller: _Name,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            key: const ValueKey("Email"),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: "Email",
                            ),
                            controller: _Email,
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            obscureText: true,
                            key: const ValueKey("Message"),
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: "Message",
                            ),
                            controller: _Message,
                          ),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                          ElevatedButton(onPressed: () {}, child: Text('Send')),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
