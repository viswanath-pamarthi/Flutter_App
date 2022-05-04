import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() tapFunction;
  RoundIconButton({required this.icon, required this.tapFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4c4F5E),
      onPressed: tapFunction,
    );
  }
}
