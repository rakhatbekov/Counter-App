 import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
   const IconButtonWidget({ @required this.onTap, @required this.icon}) ;
     
     final VoidCallback onTap;
     final IconData icon;
   @override
   Widget build(BuildContext context) {
     return  GestureDetector(
                onTap: onTap,
                child: Container(
                  height: 44.0,
                  width: 69.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff005EA6),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:  Icon(
                  icon,
                    color: Colors.white,
                  ),
                ),
              );
   }
 }