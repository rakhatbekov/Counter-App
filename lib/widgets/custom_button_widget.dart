import 'package:flutter/material.dart';


class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    
    this.counter, this.onTap, this.color,
  }) ;

  final int counter;
  final void Function() onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      //  () => Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => MySecondPage(
      //               kelgenSan: counter,
      //             ))),
      child: Container(
        
        height: 48.0,
        width: 294.0,
        decoration:  BoxDecoration(
          color: color,
          //  Color(0xff46F3F3),
          borderRadius: const BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        child: Center(
          child: Text(
            'Сан: $counter',
            style: const TextStyle(fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
