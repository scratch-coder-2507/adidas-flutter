
import 'package:adidashop/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/adidas-black.png",
                  height: 47,
                  width: 47,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(11),
                  bottomRight: Radius.circular(7),
                ),
                color: Colors.black,
              ),
              child: Icon(
                Icons.shopping_bag,
                size: 29,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
