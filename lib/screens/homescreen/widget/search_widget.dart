import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final String hintText;
  SearchWidget(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Material(
        elevation: 10,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Container(
          // height: 50,
          padding: EdgeInsets.only(left: 10),
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(color: Theme.of(context).accentColor)),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(
                  color: Colors.white,
                  //style: BorderStyle.solid,
                ),
              ),
              // prefixIcon: Icon(
              //   Icons.search,
              //   color: Theme.of(context).accentColor,
              // ),
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                color: Theme.of(context).accentColor,
                onPressed: () {},
              ),
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
