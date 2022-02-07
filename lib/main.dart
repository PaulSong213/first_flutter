// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';
import '../screens/random_words/random_words.dart';
import '../screens/locations/locations.dart';
import './style.dart';
import '../screens/columns/columns.dart';
import '../screens/shopping_list/shopping_list.dart';
import 'screens/center_layout/center_layout.dart';
import 'screens/row_layout/row_layout.dart';
import 'screens/listview_layout/listview_layout.dart';
import 'screens/landing_page/landing_page.dart';

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
        length: 7,
        child: Scaffold(
          body: TabBarView(
            children: [
              LandingPage(),
              Locations(),
              ShoppingList(),
              RandomWords(),
              CenterLayout(),
              RowLayout(),
              ListViewLayout(),
            ],
          ),
          bottomNavigationBar: const BottomAppBar(
            elevation: 0,
            color: Colors.white,
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.accessible_forward_sharp)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.loyalty_outlined)),
                Tab(icon: Icon(Icons.access_alarms_outlined)),
                Tab(icon: Icon(Icons.donut_large_rounded)),
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
