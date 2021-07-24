import 'package:adidashop/data/Data.dart';
import 'package:flutter/material.dart';

class ProductSize extends StatefulWidget {
  @override
  _ProductSizeState createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> with TickerProviderStateMixin {
  int _selectedIndex;
  List<String> _options = ["S", "M", "L", "XL", "2XL"];

  Widget _buildSize() {
    List<Widget> chips = new List();

    for(int i=0; i< _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
          selected: _selectedIndex == i,
        label: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                _options[i],
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        elevation: 5,
        pressElevation: 2,
        shadowColor: Colors.black38,
        selectedColor: Colors.black87,
        onSelected: (bool selected) {
            setState(() {
              if(selected) {
                _selectedIndex = i;
              }
            });
        },
      );
      chips.add(Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: choiceChip,
      ));
    }
    return ListView(
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: _buildSize(),
      ),
    );
  }
}
