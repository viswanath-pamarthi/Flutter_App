import 'package:flutter/material.dart';

const TextStyle labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
