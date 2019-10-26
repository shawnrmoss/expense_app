import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

import '../models/transaction.dart';

class UserTransations extends StatefulWidget {
  @override
  _UserTransationsState createState() => _UserTransationsState();
}

class _UserTransationsState extends State<UserTransations> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Weekly Groceries',
      amount: 16.26,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
     _userTransactions.add(newTx) ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransation(_addNewTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
