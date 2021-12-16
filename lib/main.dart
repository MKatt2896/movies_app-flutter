import 'package:flutter/material.dart';
import 'package:movies_app/browse_screen.dart';
import 'package:movies_app/home_screen.dart';
import 'search_screen.dart';

import 'MyThemeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      routes: {
        home.routename: (context) => home(),
        SearchScreen.routename: (context) => SearchScreen(),
        BrowseScreen.routename: (context) => BrowseScreen(),
      },
      initialRoute: BrowseScreen.routename,
      title: 'Flutter Demo',
    );
  }
}
