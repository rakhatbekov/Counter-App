import 'package:flutter/material.dart';
import 'package:tirkeme1/constants/textStyle/appBar_color.dart';
import 'package:tirkeme1/widgets/custom_appBar_widget.dart';
import 'package:tirkeme1/widgets/custom_button_widget.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({ this.number}) ;
  final int number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBarColor.scaffoldColor,
      appBar: const CustomAppBar(text: 'Тапшырма 02'),
      body: Center(
        child: CustomButtonWidget(
          color:AppBarColor.mainButtonColor,
          counter: number,
          onTap: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
