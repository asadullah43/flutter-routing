import 'package:flutter/material.dart';
import 'package:practise_routing/home_screen.dart';
import 'package:practise_routing/screen_one.dart';
import 'package:practise_routing/screen_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        ScreenOne.id: (context) => const ScreenOne(),
        ScreenThree.id: (context) => const ScreenThree(),
      },
    );
  }
}
