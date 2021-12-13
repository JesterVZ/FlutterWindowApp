import 'package:flutter/material.dart';
import 'package:information_project/scrollbar_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 36.0
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("Список элементов")),
        body: const Center(
          child: ScrollBarWidget(),
        ),
      ),
    );
  }
}