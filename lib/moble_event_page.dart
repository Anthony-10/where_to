import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

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
                              IconButton(
                                  iconSize: width * .08,
                                  onPressed: () =>
                                      scaffoldKey.currentState!.openEndDrawer(),
                                  icon: Icon(
                                    Icons.menu_rounded,
                                    color: Colors.white,
                                  ))
                              /*IntrinsicHeight(
                                child: Row(
                                  children: [
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
                              )*/
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: height * 0.7,
                  color: Colors.blue,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('wew'),
                              VerticalDivider(
                                color: Colors.black,
                              ),
                              Text('wew'),
                              VerticalDivider(
                                color: Colors.black,
                              ),
                              Text('wew'),
                            ],
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
