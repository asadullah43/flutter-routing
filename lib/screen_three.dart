import 'package:flutter/material.dart';
import 'package:practise_routing/home_screen.dart';

class ScreenThree extends StatefulWidget {
  static const id = 'screen_three';
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen three'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (() {
              Navigator.pushNamed(context, HomeScreen.id);
            }),
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.pink,
              child: const Center(child: Text('Screen three')),
            ),
          )
        ],
      ),
    );
  }
}
