import './location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;

  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Ariya Bamboo Grove 1', 'assets/images/banner.jpeg', [
        LocationFact('Summary',
            'Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove'),
        LocationFact('How to get there',
            'Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove'),
      ]),
      Location(2, 'Ariya Bamboo Grove 2', 'assets/images/banner.jpeg', [
        LocationFact('Summary',
            'Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove'),
        LocationFact('How to get there',
            'Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove'),
      ]),
      Location(3, 'Ariya Bamboo Grove 3', 'assets/images/banner.jpeg', [
        LocationFact('Summary',
            'Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove'),
        LocationFact('How to get there',
            'Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove Ariya Bamboo Grove'),
      ]),
    ];
  }

  static Location fetchById(int locationId) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
    return Location(0, '', '', []);
  }
}
