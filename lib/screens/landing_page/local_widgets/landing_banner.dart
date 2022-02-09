import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

const String _imageBannerUrl =
    "https://images.unsplash.com/photo-1501339847302-ac426a4a7cbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60";
const double _bannerSize = 200;

class LandingBanner extends StatelessWidget {
  const LandingBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPaintBaselinesEnabled = false;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(_imageBannerUrl),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back!',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {},
            child: Text('Order now'),
          )
        ],
      ),
      padding: EdgeInsets.fromLTRB(30, 50, 0, 0),
      height: _bannerSize,
    );
  }
}
