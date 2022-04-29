import 'package:flutter/material.dart';

//Stateless widget is immutable so all of the properties should be set only once
//if we need to change colour then a new Reusable card widget needs to be created
class ReusableCard extends StatelessWidget {
  final Color
      colour; //Final variable - you can only initialize value once, can be either compile time or run time
  final Widget? cardChild;
  ReusableCard({required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color(0xFF1D1E33),//if color is a short hand for the Decoration color, if adding decoration then move color to decoration
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
