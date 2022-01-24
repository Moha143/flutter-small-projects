import 'package:flutter/material.dart';
import 'Transaction.dart';

class TransactionList extends StatelessWidget {
  TransactionList({Key? key}) : super(key: key);
  final List<Transactions> transaction;

  @override
  Widget build(BuildContext context) {
    return

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
                      color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
