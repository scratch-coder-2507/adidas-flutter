import 'package:adidashop/data/Data.dart';
import 'package:adidashop/modals/JerseyStyle.dart';
import 'package:adidashop/screens/BuyScreen.dart';
import 'package:flutter/material.dart';
class Jersey extends StatelessWidget {
  jerseypack(BuildContext context, int index) {
    JerseyStyle style = jerseystyles[index];
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
            width: 180,
            height: 1700,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  style.image,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 20.0,
                  offset: Offset(3, 9),
                ),
              ],
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white60,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          style.type,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      style.price,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 15, bottom: 13, left: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 7),
                    child: Text(
                      "7",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, bottom: 40),
                  child: Container(
                    height: 200,
                    width: 3,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.11),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 40),
                  child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(270/360),
                    child: Text(
                      "Kits",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SizedBox(
                height: 400,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuyScreen()),
                    );
                  },
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: jerseystyles.length,
                      itemBuilder: (BuildContext context, int index){
                        return jerseypack(context, index);
                      }
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
