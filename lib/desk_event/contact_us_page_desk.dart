import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class ContactUsPageDesk extends StatefulWidget {
  const ContactUsPageDesk({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  State<ContactUsPageDesk> createState() => _ContactUsPageDeskState();
}

class _ContactUsPageDeskState extends State<ContactUsPageDesk> {
  final eventController = Get.put(EventController());
  final TextEditingController _Email = TextEditingController();
  final TextEditingController _Message = TextEditingController();
  final TextEditingController _Name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.height * 0.8,
          width: widget.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(30, 11, 69, 1.0),
                Color.fromRGBO(40, 9, 57, 1.0)
              ])),
          child: Center(
            child: Container(
              height: widget.height * 0.7,
              width: widget.width * 0.7,
              color: Colors.grey[200],
              child: Padding(
                padding: EdgeInsets.only(
                    left: widget.width * 0.3, top: widget.height * 0.08),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Get in Touch\n',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
                            ElevatedButton(
                                onPressed: () {}, child: Text('Send')),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ),
        Positioned(
            left: widget.width * 0.06,
            top: widget.height * 0.1,
            bottom: widget.height * 0.1,
            child: Container(
              height: widget.height * 0.5,
              width: widget.width * 0.3,
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
            ))
      ],
    );
  }
}
