import 'package:flutter/material.dart';
import 'package:practise_routing/screen_three.dart';

class ScreenOne extends StatefulWidget {
  static const id = 'screen_one';
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen one'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: (() {
              Navigator.pushNamed(context, ScreenThree.id);
            }),
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: const Center(child: Text('Screen Two')),
            ),
          )
        ],
      ),
    );
  }
}
