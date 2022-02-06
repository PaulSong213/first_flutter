import 'package:flutter/material.dart';

class CenterLayout extends StatelessWidget {
  const CenterLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World',
        style: _myTextStyle,
      ),
    );
  }

  static const _myTextStyle = TextStyle(
    fontSize: 62,
    color: Colors.black87,
  );
}
