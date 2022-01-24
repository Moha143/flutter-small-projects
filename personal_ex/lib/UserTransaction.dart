// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'NewTransaction.dart';
import 'module.dart';
import 'DisplayTransaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<TransactionClass> transaction = [
    TransactionClass(amount: "122", id: "12", date: '2222', title: 'suun'),
    TransactionClass(amount: "122", id: "12", date: '2222', title: 'suun'),
    TransactionClass(amount: "122", id: "12", date: '2222', title: 'suun'),
  ];
// Adding new transactions
  void _newTransaction(String trnTitle, String trnAmount) {
    final newTran = TransactionClass(
      title: trnTitle,
      amount: trnAmount,
      date: '222222222222',
      id: DateTime.now().toString(),
    );
    setState(() {
      transaction.add(newTran);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [NewTransaction(_newTransaction), TransactionList(transaction)],
    );
  }
}
