import 'package:adidashop/data/Data.dart';
import 'package:adidashop/modals/Style.dart';
import 'package:flutter/material.dart';

class ScrollableList extends StatelessWidget {

  teams(BuildContext context, int index) {
    Style style = styles[index];
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            margin: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            width: 60,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10.0,
                  offset: Offset(3, 9),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Image.asset(
                    style.logo,
                    height: 40,
                  ),
                ),
                Text(
                    ".",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, top: 30),
      child: Container(
        height: 100,
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: styles.length,
            itemBuilder: (BuildContext context, int index) {
              return teams(context, index);
            }
        ),
      ),
    );
  }
}