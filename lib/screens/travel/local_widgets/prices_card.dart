import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

FirebaseDatabase database = FirebaseDatabase.instance;

class PricesCard extends StatelessWidget {
  final String _title;
  final Color _titleColor;
  final Color _backgroundColor;
  final IconData _iconName;
  final Color _iconColor;

  const PricesCard(this._title, this._titleColor, this._backgroundColor,
      this._iconName, this._iconColor,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {database.ref().child("test").set("Hello World")},
        child: Container(
            width: 200,
            margin: const EdgeInsets.only(right: 7.0, left: 7.0),
            decoration: BoxDecoration(
              color: _backgroundColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            padding: EdgeInsets.all(12),
            child: Row(
              children: [
                Icon(
                  _iconName,
                  color: _iconColor,
                  size: 38.0,
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  children: [
                    Text(
                      _title,
                      style: TextStyle(
                        color: _titleColor,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "\$300.00",
                      style: TextStyle(
                        color: Color(0xff312E39),
                        fontSize: 18,
                        fontWeight: FontWeight.w600, // light
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
