import 'package:flutter/material.dart';
import 'package:studyweb/screens/homescreen/widget/app_bar.dart';

class PortfolioScreen extends StatelessWidget {
  static const routeName = '/Portfolio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
          child: Row(children: [
            const Text(
              'Study',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Space',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        actions: [
          MyAppBar(),
        ],
      ),
      body: Center(
        child: const Text('Hello! You can check your profile here'),
      ),
    );
  }
}
