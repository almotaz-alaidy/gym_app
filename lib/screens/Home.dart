import 'package:flutter/material.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'FirstScreen.dart';
import 'Profile.dart';
import 'contactus.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // *@dfas
  List page = [FirstScreen(), MyProfile(), ContactUs()];
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom bar
      // now we will use bottom bar package

      body: page[_selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          const TabItem(icon: Icons.home, title: 'Home'),
          const TabItem(icon: Icons.message, title: 'profile'),
          const TabItem(icon: Icons.people, title: 'contact us'),
        ],
        backgroundColor: Color.fromARGB(255, 156, 156, 156),
        activeColor: Color.fromARGB(255, 44, 52, 58),
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            _selectedPage = i;
          });
        },
      ),
    );
  }
}
