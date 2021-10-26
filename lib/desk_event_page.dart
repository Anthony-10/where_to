import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';
import 'package:where_to/extras/mobile_navbar/contactUs_page_mobile/contactUs_page_mobile.dart';

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
  final items1 = [
    'Item1',
    'Item12',
    'Item13',
    'Item14',
    'Item15',
  ];
  final items2 = [
    'Item2',
    'Item22',
    'Item23',
    'Item24',
    'Item25',
  ];
  final items3 = [
    'Item3',
    'Item32',
    'Item33',
    'Item24',
    'Item35',
  ];

  String? value;

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
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/party.jpg',
                        ),
                      )),
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
                  color: Colors.blue,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 150, left: 40, right: 40),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
                              childAspectRatio: 8 / 10,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: 20,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 800,
                          height: 500,
                          child: Column(
                            children: [
                              Container(
                                color: Colors.black,
                                height: 200,
                                width: 400,
                              ),
                              Container(
                                color: Colors.white,
                                height: 100,
                                width: 400,
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
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
                                        borderRadius: BorderRadius.circular(12),
                                        onChanged: (value) => setState(() {
                                          this.value = value;
                                        }),
                                        value: value,
                                        icon: Icon(Icons.arrow_drop_down,
                                            color: Colors.black),
                                        iconSize: 25,
                                        items:
                                            items1.map(buildMenuItem).toList(),
                                        hint: Text('Select Event'),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(),
                                  Container(
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: value,
                                        onChanged: (value) => setState(() {
                                          this.value = value;
                                        }),
                                        icon: Icon(Icons.arrow_drop_down,
                                            color: Colors.black),
                                        iconSize: 25,
                                        items:
                                            items2.map(buildMenuItem).toList(),
                                        hint: Text('Select Location'),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(),
                                  Container(
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        onChanged: (value) => setState(() {
                                          this.value = value;
                                        }),
                                        value: value,
                                        icon: Icon(Icons.arrow_drop_down,
                                            color: Colors.black),
                                        iconSize: 25,
                                        items:
                                            items3.map(buildMenuItem).toList(),
                                        hint: Text('Select Date'),
                                      ),
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

  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(value: item, child: Text(item));

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
