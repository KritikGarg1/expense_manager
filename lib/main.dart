import 'package:flutter/material.dart';

import 'user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expense Manager'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20.0),
                height: 140.0,
                child: Card(
                  elevation: 5.0,
                  child: Text('Chart here!'),
                ),
              ),
              UserTransactions()
            ],
          ),
        ));
  }
}
