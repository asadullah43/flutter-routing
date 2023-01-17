import 'package:flutter/material.dart';

import 'package:practise_routing/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  // static const id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (() {
                Navigator.pushNamed(context, RoutesName.screenOne,
                    arguments: {'Name': "Asad", 'subject': "Flutter"});
                // Navigator.pushNamed(context, ScreenOne.id);
              }),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.orange,
                child: const Center(child: Text('Screen one')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
