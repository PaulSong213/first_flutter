import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.purple,
              ),
              child: Icon(
                Icons.airplanemode_active,
                color: Colors.white,
                size: 35.0,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Flight',
              style: TextStyle(
                color: Colors.black87,
              ),
            )
          ],
        ),
        Positioned(
          top: 0,
          left: 0,
          child: ElevatedButton(
            onPressed: () => {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.black.withOpacity(0.0),
                shape: (RoundedRectangleBorder()) // background
                ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ],
    );
  }
}
