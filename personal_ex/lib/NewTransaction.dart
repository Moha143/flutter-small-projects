// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function newtrn;
  NewTransaction(this.newtrn);

  final titleName = TextEditingController();
  final titleAmount = TextEditingController();
  // final titleController = TextEditingController();
  // final amountController = TextEditingController();
  // NewTransaction(this.newTran);
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(12),
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
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  newtrn(
                    titleName.text,
                    double.parse(titleAmount.text),
                  );
                },
                child: const Text('New Transaction',
                    style: TextStyle(color: Colors.purple))),
          ],
        ));
  }
}
