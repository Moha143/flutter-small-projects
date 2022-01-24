// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  // int _personCounter = 1;
  // double _billmomey = 1.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height),
          child: ListView(
            scrollDirection: Axis.vertical,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.purple.shade50,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Total per Person',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "\$45",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
