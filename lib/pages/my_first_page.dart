import 'package:flutter/material.dart';
import 'package:tirkeme1/constants/textStyle/appBar_color.dart';
import 'package:tirkeme1/pages/my_second_page.dart';
import 'package:tirkeme1/widgets/custom_appBar_widget.dart';
import 'package:tirkeme1/widgets/custom_button_widget.dart';
import 'package:tirkeme1/widgets/icon_button_widget.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({Key key}) : super(key: key);

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  int _counter = 0;
  String textKetti;
  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  void _increment() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBarColor.scaffoldColor,
      appBar: const CustomAppBar(
        text: 'Тапшырма 01',
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtonWidget(
            counter: _counter,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MySecondPage(
                      number: _counter,
                    ),
                  ));
            },
            color: AppBarColor.mainButtonColor,
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtonWidget(
                onTap: () {
                  _decrement();
                },
                icon: Icons.remove,
              ),
              IconButtonWidget(
                onTap: () {
                  _increment();
                },
                icon: Icons.add,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
