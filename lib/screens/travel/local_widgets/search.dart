import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      child: TextField(
        autofocus: false,
        style: TextStyle(
          fontSize: 14.0,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blue[50],
          contentPadding: EdgeInsets.only(left: 14.0, bottom: 4.0, top: 4.0),
          prefixIcon: Icon(
            Icons.search,
            size: 20.0,
          ),
          labelText: "Search flights,hotels,etc.",
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: Colors.blueGrey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
