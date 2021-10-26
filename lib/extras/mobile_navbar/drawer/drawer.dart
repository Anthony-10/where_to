import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
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
}
