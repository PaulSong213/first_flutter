import 'package:flutter/material.dart';
import 'local_widgets/image_banner.dart';
import 'local_widgets/text_section.dart';

class Columns extends StatefulWidget {
  const Columns({Key? key}) : super(key: key);

  @override
  _ColumnsState createState() => _ColumnsState();
}

class _ColumnsState extends State<Columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Columns Section'),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner("assets/images/banner.jpeg"),
          TextSection("lorem Ipsum",
              "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum "),
          TextSection("lorem Ipsum",
              "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum "),
          TextSection("lorem Ipsum",
              "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum "),
        ],
      ),
    );
  }
}
