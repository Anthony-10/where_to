import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbar();
      } else {
        return MobileNavBar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Where To',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Contact Us',
                    style: TextStyle(color: Colors.white),
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: BoxConstraints(maxWidth: 1200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Where To',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    child: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    child: Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
