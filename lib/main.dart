// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:first_flutter/models/location.dart';
import 'package:flutter/material.dart';
import '../screens/random_words/random_words.dart';
import '../screens/locations/locations.dart';
import './style.dart';
import '../screens/columns/columns.dart';
import '../screens/shopping_list/shopping_list.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          titleTextStyle: AppBarTextStyle,
        ),
        textTheme: const TextTheme(
          headline1: TitleTextStyle,
          bodyText1: Body1TextStyle,
        ),
      ),
      onGenerateRoute: _routes(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            children: [
              Locations(),
              ShoppingList(),
              RandomWords(),
            ],
          ),
          bottomNavigationBar: const BottomAppBar(
            elevation: 0,
            color: Colors.white,
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
              labelColor: Colors.black54,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black),
                insets: EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 50.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      // final Map<String, dynamic> arguments = settings.arguments;
      final arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = Columns(1);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
