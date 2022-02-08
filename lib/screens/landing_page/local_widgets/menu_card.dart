import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String _imageBannerUrl;
  final String _title;

  const MenuCard(this._imageBannerUrl, this._title, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //go to the menu section
      },
      child: Container(
        height: 135,
        width: 135,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(_imageBannerUrl),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          _title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            color: Colors.white,
            shadows: const <Shadow>[
              Shadow(
                offset: Offset(5.0, 2.0),
                blurRadius: 3.0,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
