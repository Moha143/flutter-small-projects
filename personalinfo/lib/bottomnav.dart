// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({Key? key}) : super(key: key);

  @override
  _Bottomnav_State createState() => _Bottomnav_State();
}

class _Bottomnav_State extends State<Bottomnav> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                title: Text(
                  'Shopping',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                ))
          ],
        ),
      ),
    );
  }
}
