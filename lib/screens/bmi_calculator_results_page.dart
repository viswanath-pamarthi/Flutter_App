import 'package:flutter/material.dart';
import 'package:flutter_app/components/bottom_button.dart';
import 'package:flutter_app/components/reusable_card.dart';
import 'package:flutter_app/screens/bmi_results_screen_arguments.dart';
import '../components/constants.dart';
import 'package:flutter_app/calculator_brain.dart';

class BmiCalculatorResultsPage extends StatelessWidget {
  static const routeName = '/bmiResults';
  late final String bmiResult;
  late final String resultText;
  late final String interpretation;

  late final BmiResultsScreenArguments _bmiResultsScreenArguments;
  // BmiCalculatorResultsPage(
  //     {required this.bmiResult,
  //     required this.resultText,
  //     required this.interpretation});

  @override
  Widget build(BuildContext context) {
    _bmiResultsScreenArguments =
        ModalRoute.of(context)!.settings.arguments as BmiResultsScreenArguments;

    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  "Your Results",
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      _bmiResultsScreenArguments.weightResultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      _bmiResultsScreenArguments.bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      _bmiResultsScreenArguments.interpretation,
                      textAlign: TextAlign.center,
                      style: KBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: 'RE-CALCULATE YOUR BMI')
          ],
        ));
  }
}
