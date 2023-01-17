import 'package:flutter/material.dart';
import 'package:practise_routing/home_screen.dart';
import 'package:practise_routing/screen_one.dart';
import 'package:practise_routing/screen_three.dart';
import 'package:practise_routing/utils/routes_name.dart';

class Routes {
  static MaterialPageRoute genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: ((context) => const HomeScreen()));
      case RoutesName.screenOne:
        return MaterialPageRoute(
            builder: ((context) => ScreenOne(
                  data: settings.arguments as Map,
                )));
      case RoutesName.screenThree:
        return MaterialPageRoute(builder: ((context) => const ScreenThree()));

      default:
        return MaterialPageRoute(builder: ((context) {
          return const Scaffold(
            body: Center(child: Text('No Routes define')),
          );
        }));
    }
  }
}
