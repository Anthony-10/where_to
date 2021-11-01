import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 150, left: 40, right: 40),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 3 / 10,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  color: Colors.black,
                  height: height * .3,
                  width: width * .4,
                  child: Image.asset(
                    'assets/event1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  color: Colors.blue,
                  height: height * .3,
                  width: width * .4,
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
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                            color: Colors.pink,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Text(
                              'Tickets',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => print(this.value1);),
                              );*/
                            }),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
