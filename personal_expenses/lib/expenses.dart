//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
//import './widgets/transaction_ldartransactionList';
import 'Transaction.dart';

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
        title: const Text("Expenses App "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.green,
              child: Text("CHARTS"),
            ),
          ),
        ],
      ),
    );
  }
}
