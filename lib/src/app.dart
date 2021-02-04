import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/src/features/home/home_view.dart';
import 'package:provider_demo/src/states/counter_state.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CounterState(),
        ),
      ],
      child: MaterialApp(
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeView(),
      ),
    );
  }
}
