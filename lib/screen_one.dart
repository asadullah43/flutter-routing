import 'package:flutter/material.dart';
import 'package:practise_routing/utils/routes_name.dart';

class ScreenOne extends StatefulWidget {
  dynamic data;
  // static const id = 'screen_one';
  ScreenOne({Key? key, required this.data}) : super(key: key);

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
              Navigator.pushNamed(context, RoutesName.screenThree);
              // Navigator.pushNamed(context, ScreenThree.id);
            }),
            child: Column(
              children: [
                Text(widget.data['Name']),
                Text(widget.data['subject']),
                Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.green,
                  child: const Center(child: Text('Screen Two')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
