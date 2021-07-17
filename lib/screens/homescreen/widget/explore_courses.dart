import 'package:flutter/material.dart';

class ExploreCourses extends StatelessWidget {
  var courses = [
    'Art and Musics',
    'Languages',
    'Environmental Education',
    'Health Care and Mental Health',
    'Sex Education',
    'Law and Human Rights',
    'Sustainable Development Goals',
    'Web Development',
    'Explore more'
  ];
  var backColor = [const Color.fromRGBO(5, 23, 100, 1), const Color.fromRGBO(4, 53, 252, 0.25)];
  var textColor = [Colors.white, Colors.black];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        padding: EdgeInsets.all(20),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: courses.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: backColor[index % 2],
              elevation: 5.0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.all(20),
                // margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
                child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 0.3,
                    margin: EdgeInsets.only(left: 8),
                    child: Text(
                      courses[index],
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: textColor[index % 2]),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    )),
              ),
            ),
            onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (_)=> FoodDetailsScreen(food)));
            },
          );
        },
      ),
    );
  }
}
