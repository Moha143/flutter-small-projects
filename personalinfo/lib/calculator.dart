// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  _MycalState createState() => _MycalState();
}

class _MycalState extends State<MyCalculator> {
  int n7 = 7;
  var userInput = '';
  var answer = '';

  // Array of button
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(9),

            //constraints: BoxConstraints.expand(),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.white, Colors.limeAccent]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(''),
              ],
            ),
          ),
          Divider(
            thickness: 0.5,
          ),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '7',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _show7,
                color: Colors.amberAccent,
                //shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '8',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '9',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              width: 90,
              height: 60,
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '+',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
          ]),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '7',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '8',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '9',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              width: 90,
              height: 60,
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '+',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
          ]),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '5',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '6',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              width: 90,
              height: 60,
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '-',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
          ]),
          Row(children: <Widget>[
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
            Container(
              width: 90,
              height: 60,
              margin: EdgeInsets.all(12.0),
              padding: EdgeInsets.all(8.0),
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(8), color: Colors.green),
              child: FlatButton(
                // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: Text(
                  '=',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: _showqout,
                color: Colors.amberAccent,
                //  shape: StadiumBorder(),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  _show7() {
    setState(() {
      n7;
    });
  }

  _showqout() {}
}
