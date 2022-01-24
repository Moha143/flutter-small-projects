// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  const NewTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleName = TextEditingController();
    final titleAmount = TextEditingController();
    return Card(
        margin: EdgeInsets.all(12),
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
        ));
  }
}
