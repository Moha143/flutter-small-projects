import 'package:flutter/material.dart';
import 'Transaction.dart';

class PersonalExpenses extends StatelessWidget {
  const PersonalExpenses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          color: Colors.deepOrange,
          child: Text('Charts'),
        ),
        // Column(
        //   children: transaction.map(tr){

        //     return Container(

        //       child : Card(Text(tr.title)
        //       ),
        //     );
        //   }.toList()),
      ]),
    );
  }
}
