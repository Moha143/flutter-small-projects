// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

import 'package:flutter/material.dart';

class MyWidsom extends StatefulWidget {
  const MyWidsom({Key? key}) : super(key: key);

  @override
  _MyWidsomState createState() => _MyWidsomState();
}

class _MyWidsomState extends State<MyWidsom> {
  List qoutos = [
    'the more your write, the you get marks',
    'sfaaaaaaaaaaaa',
    'sacdddddddd'
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(29),
            width: 300,
            height: 250,
            //constraints: BoxConstraints.expand(),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.grey, Colors.blue]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(qoutos[index % qoutos.length]),
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          SizedBox(
            width: 200,
            height: 70,
            child: FlatButton(
              // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Icon(Icons.add
                  // 'Click',
                  // style: TextStyle(color: Colors.white),
                  ),
              onPressed: _showqout,
              color: Colors.amberAccent,
              shape: StadiumBorder(),
              // shape: RoundedRectangleBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(50))),
            ),
          ),
        ],
      ),
    );
  }

  _showqout() {
    setState(() {
      index++;
    });
  }
}
