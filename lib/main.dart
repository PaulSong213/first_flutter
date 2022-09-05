// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
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
import 'screens/travel/travel.dart';

const locationsRoute = '/';
const locationDetailRoute = '/location_detail';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
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
          titleTextStyle: appBarTextStyle,
        ),
        textTheme: const TextTheme(
          headline1: titleTextStyle,
          bodyText1: body1TextStyle,
          headline6: sectionTitle,
        ),
      ),
      onGenerateRoute: _routes(),
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          body: TabBarView(
            children: [
              Travel(),
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
                Tab(icon: Icon(Icons.airplanemode_active)),
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
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
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
      Widget screen;
      switch (settings.name) {
        case locationsRoute:
          screen = Locations();
          break;
        case locationDetailRoute:
          screen = Columns(1);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
