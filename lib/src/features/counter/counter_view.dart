import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/src/states/counter_state.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CounterState counterState = Provider.of<CounterState>(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("${counterState.counter}"),
              RaisedButton(
                child: Text("Increment"),
                onPressed: counterState.increment,
              ),
              RaisedButton(
                child: Text("Decrement"),
                onPressed: counterState.decrement,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
