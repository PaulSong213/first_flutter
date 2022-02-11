import 'package:flutter/material.dart';

class LandingPromo extends StatelessWidget {
  const LandingPromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      decoration: BoxDecoration(
        color: Colors.brown[800],
        borderRadius: BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Get P10 off',
                style: _bodyStyle,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'On new Users',
                style: _bodyStyle,
              ),
            ],
          ),
          Text(
            'Welcome Gift!',
            style: _titleStyle,
          ),
        ],
      ),
    );
  }

  static const _bodyStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 11,
    color: Colors.white,
  );

  static const _titleStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: Colors.white,
  );
}
