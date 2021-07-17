import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:studyweb/screens/aboutscreen/about_screen.dart';
import 'package:studyweb/screens/contact/contact_screen.dart';
import 'package:studyweb/screens/homescreen/home.dart';
import 'package:studyweb/screens/homescreen/test.dart';
import 'package:studyweb/screens/portfolio/portfolio.dart';
import 'package:studyweb/screens/rule&regulation/rules_screen.dart';
import 'package:studyweb/screens/servicesScreen/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Study Space',
      theme: ThemeData(
        fontFamily:'Lato' ,
          primarySwatch: Colors.blue,
          primaryColor: Color.fromRGBO(0, 50, 255, 1)),
      home: MyHomePage(title: 'Study'),
      routes: {
        RulesScreen.routeName: (ctx) => RulesScreen(),
        AboutScreen.routeName: (ctx) => AboutScreen(),
        ServicesScreen.routeName: (ctx) => ServicesScreen(),
        PortfolioScreen.routeName: (ctx) => PortfolioScreen(),
        ContactsScreen.routeName: (ctx) => ContactsScreen(),
      },
    );
  }
}
