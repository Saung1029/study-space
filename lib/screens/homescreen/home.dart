import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyweb/screens/homescreen/widget/app_bar.dart';
import 'package:studyweb/screens/homescreen/widget/left_signup_widget.dart';
import 'package:studyweb/screens/homescreen/widget/search_widget.dart';
import './widget/explore_courses.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var spacerWidth = 0.0;
    var leftWidgetWidth = 650.0;
    print(screenWidth);

    if (screenWidth >= 1500) {
      leftWidgetWidth = screenWidth * 0.7;
      spacerWidth = screenWidth * 0.6;
    } else if (screenWidth >= 1500) {
      leftWidgetWidth = screenWidth * 0.6;
      spacerWidth = screenWidth * 0.6;
    } else {
      leftWidgetWidth = 650;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () { Navigator.of(context).pushReplacementNamed('/');
                 },
          child: Row(children: [
            Text(
              widget.title,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SvgPicture.asset('assets/svg/dot.svg'),
                    ),
                    Container(
                      width: leftWidgetWidth,
                      margin: EdgeInsets.only(left: 20),
                      child: LeftWidget(),
                    ),
                  ],
                ),

                // Column(children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.6,
                  // decoration: BoxDecoration(color: Colors.red),
                  child: Image.asset('assets/png/people.png'),
                ),

                // SearchWidget('Search our free courses')
                // ]),
              ]),
              Container(
                child: SvgPicture.asset(
                  'assets/svg/circle.svg',
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: spacerWidth),
                width: 500,
                child: SearchWidget('Search our free courses'),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: const Text(
                  'Free online course resourses\nby other organization',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: const Text(
                  'Download e-books',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Container(
                padding: EdgeInsets.all(25),
                child: const Text(
                  'Explore our courses',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              ExploreCourses(),
            ],
          ),
        ),
      ),

      // ]
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
