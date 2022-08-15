import 'package:flutter/material.dart';
import 'local_widgets/image_banner.dart';
import 'local_widgets/text_section.dart';
import '../../models/location.dart';

class Columns extends StatelessWidget {
  final int _locationId;

  const Columns(this._locationId);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          ...textSections(location),
        ],
      ),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
