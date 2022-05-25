import 'package:flutter/material.dart';
import 'package:tirkeme1/constants/text_style.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String text;
  const CustomAppBar({Key key, this.text})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: const Color(0xffFFFFFF),
      title: Text(
        widget.text,
        style: TextStyleApp.appBarStyle,
      ),
    );
  }
}
