import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final String _imageBannerUrl;
  final String _title;

  const MenuCard(this._imageBannerUrl, this._title, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          //go to the menu section
        },
        child: Container(
          height: 135,
          width: 135,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(_imageBannerUrl),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
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
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.black.withOpacity(0.0),
                      shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )) // background
                      ),
                  child: SizedBox(
                    height: 135,
                    width: 103,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
