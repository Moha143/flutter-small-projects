// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'module.dart';

class TransactionList extends StatelessWidget {
  final List<TransactionClass> transaction;
  // ignore: prefer_const_constructors_in_immutables
  TransactionList(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.purple, style: BorderStyle.solid),
                    //  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(
                    '\$ ${transaction[index].amount}',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      transaction[index].title,
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.normal,
                          fontSize: 18),
                    ),
                    Text(
                      DateFormat.yMMMMd().format(transaction[index].date),
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transaction.length,
      ),
    );

    //     //transaction
    //     Column(
    //   // crossAxisAlignment: CrossAxisAlignment.start,
    //   children: transaction.map((tr) {
    //     return Card(
    //         child: Row(
    //       children: [
    //         Container(
    //           margin: const EdgeInsets.symmetric(
    //             vertical: 10,
    //             horizontal: 15,
    //           ),
    //           decoration: BoxDecoration(
    //               border: Border.all(
    //                   style: BorderStyle.solid, color: Colors.purple)),
    //           child: Padding(
    //             padding: const EdgeInsets.all(10),
    //             child: Text(
    //               '\$ ${tr.amount}',
    //               style: const TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 20,
    //                   color: Colors.purple),
    //             ),
    //           ),
    //         ),
    //         Column(
    //           children: [
    //             Text(
    //               tr.title,
    //               style: const TextStyle(
    //                   color: Colors.purple,
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 20),
    //             ),
    //             Text(
    //               // DateFormat.yMMMd().format(tr.date),
    //               '133232',
    //               style: TextStyle(
    //                   color: Colors.grey.shade400, fontWeight: FontWeight.bold),
    //             )
    //           ],
    //         )
    //       ],
    //     ));
    //   }).toList(),
    // );
  }
}

mixin DateFormat {
  static yMMMMd() {}
}
