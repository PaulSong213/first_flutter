import 'package:flutter/material.dart';
import './prices_card.dart';

var pricesCards = [];

class Prices extends StatelessWidget {
  const Prices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pricesDatas = <String, Map>{
      "shopping": <String, String>{
        "title": "Shopping",
        "titleColor": "#ff492998",
        "backgroundColor": "#ffEBE2FE",
        "iconName": "61668",
        "iconColor": "#ff483379"
      },
      "promo": <String, String>{
        "title": "Shopping",
        "titleColor": "#ff492998",
        "backgroundColor": "#ffEBE2FE",
        "iconName": "61668",
        "iconColor": "#ff483379"
      },
    };
    return Container(
      margin: EdgeInsets.all(5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var pricesData in pricesDatas.values)
              PricesCard(
                pricesData['title'].toString(),
                HexColor.fromHex(pricesData['titleColor']),
                HexColor.fromHex(pricesData['backgroundColor']),
                IconData(int.parse(pricesData['iconName']),
                    fontFamily: 'MaterialIcons'),
                HexColor.fromHex(pricesData['iconColor']),
              ),
          ],
        ),
      ),
    );
  }
}

// PricesCard("Shopping", Color(0xff492998), Color(0xffEBE2FE),
//                 Icons.wallet_giftcard_sharp, Color(0xff483379)),
//  PricesCard("Shopping", Color(0xff492998), Color(0xffEBE2FE),
//                 Icons.wallet_giftcard_sharp, Color(0xff483379)),
extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
