import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftWidget extends StatelessWidget {
  const LeftWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            child: const Text(
              'Your learning',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              'starts here',
              style: TextStyle(
                  fontSize: 50,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 70),
            child: const Text(
              'sign up to our mailing list and start your learning. Empower your future.',
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 250,
                  alignment: Alignment.center,
                  child: const Text(
                    'Sign up as student',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: EdgeInsets.all(25)),
              ),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 250,
                  alignment: Alignment.center,
                  child: const Text(
                    'Sign up as volunteer teacher',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  padding: EdgeInsets.all(25),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
