import 'package:flutter/material.dart';
import 'package:flutter_app/components/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String iconText;

  const IconContent({required this.iconData, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
