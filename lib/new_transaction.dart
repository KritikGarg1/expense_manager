import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function f;

  NewTransaction(this.f);

  void submit() {
    final enteredTitle=titleController.text;
    final enteredAmount=amountController.text;
    f(titleController.text, double.parse(amountController.text));

    if(enteredAmount.isEmpty||enteredTitle.isEmpty)
      return;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
                onSubmitted: (_) => submit(),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submit(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 5),
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {
                    submit();FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  color: Colors.purple,
                  textColor: Colors.white,
                  child: Text('Add Transaction'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
