import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransations extends StatefulWidget {
  @override
  _UserTransationsState createState() => _UserTransationsState();
}

class _UserTransationsState extends State<UserTransations> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransation(),
      TransactionList(),
    ]);
  }
}
