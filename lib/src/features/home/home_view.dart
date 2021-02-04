import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/src/features/counter/counter_view.dart';
import 'package:provider_demo/src/states/counter_state.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Consumer<CounterState>(
                builder: (_, state, __) => Text("${state.counter}"),
              ),
              RaisedButton(
                child: Text("Open Counter"),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CounterView()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
