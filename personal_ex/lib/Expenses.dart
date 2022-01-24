// ignore_for_file: file_names, camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'module.dart';

class Personal_Home extends StatefulWidget {
  const Personal_Home({Key? key}) : super(key: key);

  @override
  _Personal_HomeState createState() => _Personal_HomeState();
}

class _Personal_HomeState extends State<Personal_Home> {
  final List<TransactionClass> transaction = [
    TransactionClass(amount: "122", id: "12", date: '2222', title: 'suun'),
    TransactionClass(amount: "122", id: "12", date: '2222', title: 'suun'),
    TransactionClass(amount: "122", id: "12", date: '2222', title: 'suun'),
  ];
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
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.green,
              child: Text("CHARTS"),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.amberAccent,
              ),
              // child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Item Name',
                      hintText: 'Enter Item Name',
                    ),
                    controller: titleName,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Amount',
                      hintText: 'Enter Amounts',
                    ),
                    controller: titleAmount,
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: const Text('New Transaction',
                          style: TextStyle(color: Colors.purple))),
                ],
              )
              // )
              ),
          //transaction
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: transaction.map((tr) {
              return Card(
                  child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid, color: Colors.purple)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        '\$ ${tr.amount}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.purple),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        tr.title,
                        style: const TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        // DateFormat.yMMMd().format(tr.date),
                        '133232',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
