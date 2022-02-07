import 'package:flutter/material.dart';

class LandingAppBar extends StatefulWidget implements PreferredSizeWidget {
  LandingAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _LandingAppBarState createState() => _LandingAppBarState();
}

class _LandingAppBarState extends State<LandingAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Chocolate",
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.brown[700],
      leading: IconButton(
        icon: Icon(
          Icons.add_a_photo_outlined,
          color: Colors.white,
        ),
        onPressed: () {
          // do something
        },
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        ),
      ],
    );
  }
}
