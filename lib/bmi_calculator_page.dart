import 'dart:ffi';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'custom_widgets/icon_content.dart';
import 'custom_widgets/reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555); //type is inferred with const
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF0A0E21);

class BmiCalculatorPage extends StatelessWidget {
  const BmiCalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputPage();
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) //Male
    {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
      }
    }

    if (gender == 2) {
      //FEMALE
      if (femaleCardColor == inactiveCardColor) {
        maleCardColor = inactiveCardColor;
        femaleCardColor = activeCardColor;
      } else {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: const IconContent(
                          iconData: FontAwesomeIcons.mars, iconText: 'MALE'),
                    ),
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: const IconContent(
                          iconData: FontAwesomeIcons.venus, iconText: 'FEMALE'),
                    ),
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                  // flex: 5,
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
