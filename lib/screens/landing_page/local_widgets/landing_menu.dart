import 'package:flutter/material.dart';
import './menu_card.dart';

class LandingMenu extends StatelessWidget {
  const LandingMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Menu',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: const [
                    TextSpan(
                      text: 'VIEW ALL',
                    ),
                    WidgetSpan(
                        child: SizedBox(
                      width: 1,
                    )),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: Colors.black54,
                  ),
                ),
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MenuCard(
                  "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Best Sellers"),
              MenuCard(
                  "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
                  "Barako"),
              MenuCard(
                  "https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Latte"),
              MenuCard(
                  "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Best Sellers"),
              MenuCard(
                  "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
                  "Barako"),
              MenuCard(
                  "https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Latte"),
              MenuCard(
                  "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Best Sellers"),
              MenuCard(
                  "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
                  "Barako"),
              MenuCard(
                  "https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Latte"),
              MenuCard(
                  "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Best Sellers"),
              MenuCard(
                  "https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvZmZlZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
                  "Barako"),
              MenuCard(
                  "https://images.unsplash.com/photo-1541167760496-1628856ab772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y29mZmVlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60",
                  "Latte"),
            ],
          ),
        ),
      ],
    );
  }
}
