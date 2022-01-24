//import 'dart:html';
import 'package:flutter/material.dart';

import 'UserTransaction.dart';
//import './widgets/transaction_ldartransactionList';
//mport 'module.dart';

class PersonalExp extends StatefulWidget {
  const PersonalExp({Key? key}) : super(key: key);

  @override
  _PersonalExpState createState() => _PersonalExpState();
}

class _PersonalExpState extends State<PersonalExp> {
  final titleName = TextEditingController();
  final titleAmount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal expenses"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.green,
                elevation: 6,
                child: Text('CHARTS'),
              ),
            ),
            //Receiving user input
            UserTransaction(),
            //The main part for calcualtion
          ],
        ),
      ),
    );
  }
}
