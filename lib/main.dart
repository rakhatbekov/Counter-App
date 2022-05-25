import 'package:flutter/material.dart';
import 'package:tirkeme1/pages/my_first_page.dart';



void main() {
  runApp(const MyApplication());
}


class MyApplication extends StatelessWidget {
  const MyApplication({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyFirstPage(),
    );
  }
}
