import 'package:flutter/material.dart';
import 'ContainarState.dart';
import 'HomePage.dart';

void main() {
  UserData userData = UserData(name: 'rawan', age: 23, color: Colors.lime);
  runApp(StateComtainer(
    data: userData, // Provide the user argument here
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
