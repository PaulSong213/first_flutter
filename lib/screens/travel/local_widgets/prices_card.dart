import 'package:flutter/material.dart';

class PricesCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 50,
        color: Colors.grey.shade400,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Icon(
              Icons.accessibility_new_rounded,
              color: Colors.white,
              size: 35.0,
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              children: const [
                Text(
                  "Test",
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "Test",
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
