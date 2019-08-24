import 'package:flutter/material.dart';
import 'transactions_list.dart';
import 'new_transaction.dart';
import 'transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Shoes',
      amount: 6900,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Grocery',
      amount: 690,
      date: DateTime.now(),
    ),
  ];

  void _AddNewTransaction(String txTitle,double txAmount){
    final newTx = Transaction(id: DateTime.now().toString(),title: txTitle,amount: txAmount,date: DateTime.now());

    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[NewTransaction(_AddNewTransaction),
    TransactionList(transactions)],);
  }
}
