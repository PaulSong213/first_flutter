import 'package:flutter/material.dart';
import './best_seller_card.dart';

class LandingBestSellers extends StatelessWidget {
  const LandingBestSellers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Best sellers',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 8,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 20.0,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return BestSellerCard();
            },
          ),
        ],
      ),
    );
  }
}
