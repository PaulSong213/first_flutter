import 'package:flutter/material.dart';
import './local_widgets/welcome.dart';
import './local_widgets/search.dart';
import './local_widgets/categories.dart';

class Travel extends StatelessWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          icon: Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            // do something
          },
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Welcome(),
              Search(),
              Categories(),
            ],
          );
        },
      ),
    );
  }
}
