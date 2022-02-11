import 'package:flutter/material.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 5,
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1559403283-06fa4b7c7795?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y29mZmVlJTIwdGV4dHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
            ),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Barako", style: Theme.of(context).textTheme.headline6),
      ],
    );
  }
}
