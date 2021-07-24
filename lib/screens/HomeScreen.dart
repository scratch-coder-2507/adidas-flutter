
import 'package:adidashop/widgets/AnotherAccessories.dart';
import 'package:adidashop/widgets/Header.dart';
import 'package:adidashop/widgets/Jersey.dart';
import 'package:adidashop/widgets/ScrollableList.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            
          ),
          child: Column(
            children: [
              Header(),
              ScrollableList(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Manchester United",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              Jersey(),
              AnotherAccessories(),
            ],
          ),
        ),
      ),
    );
  }
}
