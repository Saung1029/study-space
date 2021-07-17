import 'package:flutter/material.dart';
import 'package:studyweb/screens/aboutscreen/about_screen.dart';
import 'package:studyweb/screens/contact/contact_screen.dart';
import 'package:studyweb/screens/portfolio/portfolio.dart';
import 'package:studyweb/screens/rule&regulation/rules_screen.dart';
import 'package:studyweb/screens/servicesScreen/services.dart';

enum NavigateOption {
  Rules,
  About,
  Services,
  Portfolio,
  Contacts,
  Signin,
}

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  var _isInit = true;
  var _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var appBarWidth = MediaQuery.of(context).size.width;
    if (appBarWidth <= 750) {
      return PopupMenuButton(
          icon: Icon(
            Icons.more,
            color: Theme.of(context).primaryColor,
          ),
          onSelected: (NavigateOption selectedValue) {
            setState(() {
              switch (selectedValue) {
                case NavigateOption.About:
                  Navigator.of(context)
                      .pushReplacementNamed(AboutScreen.routeName);
                  break;
                case NavigateOption.Rules:
                  Navigator.of(context)
                      .pushReplacementNamed(RulesScreen.routeName);
                  break;
                case NavigateOption.Services:
                  Navigator.of(context)
                      .pushReplacementNamed(ServicesScreen.routeName);
                  break;
                case NavigateOption.Portfolio:
                  Navigator.of(context)
                      .pushReplacementNamed(PortfolioScreen.routeName);
                  break;
                case NavigateOption.Contacts:
                  Navigator.of(context)
                      .pushReplacementNamed(ContactsScreen.routeName);
                  break;

                default:
                  {
                    Navigator.of(context).pushReplacementNamed('/');
                  }
              }
            });
          },
          itemBuilder: (_) => [
                const PopupMenuItem(
                  child: Text(
                    'Rules & Regulations',
                    style: TextStyle(color: Colors.black),
                  ),
                  value: NavigateOption.Rules,
                ),
                const PopupMenuItem(
                  child: Text(
                    'About',
                    style: TextStyle(color: Colors.black),
                  ),
                  value: NavigateOption.About,
                ),
                const PopupMenuItem(
                  child: Text(
                    'Services',
                    style: TextStyle(color: Colors.black),
                  ),
                  value: NavigateOption.Services,
                ),
                const PopupMenuItem(
                  child: Text(
                    'Portfolio',
                    style: TextStyle(color: Colors.black),
                  ),
                  value: NavigateOption.Portfolio,
                ),
                const PopupMenuItem(
                  child: Text(
                    'Contacts',
                    style: TextStyle(color: Colors.black),
                  ),
                  value: NavigateOption.Contacts,
                ),
              ]);
    } else {
      return Row(
        // ignore: prefer_const_literals_to_create_immutables
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                child: Text('Rules & Regulations'),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(RulesScreen.routeName);
                },
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                child: Text('About'),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AboutScreen.routeName);
                },
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                child: Text('Services'),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ServicesScreen.routeName);
                },
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                child: Text('Portfolio'),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(PortfolioScreen.routeName);
                },
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                child: Text('Contact'),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(ContactsScreen.routeName);
                },
              )),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.purple[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                children: [Icon(Icons.person), Text('Signin')],
              ),
            ),
          ),
        ],
      );
    }
  }
}
