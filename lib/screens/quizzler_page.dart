import 'package:flutter/material.dart';
import 'package:flutter_app/screens/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class QuizzlerPage extends StatelessWidget {
  static const routeName = '/quizzler';

  const QuizzlerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: const Text('Quizzler'),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void updateQuestion(bool answer) {
    Icon iconForAnswer;

    if (quizBrain.getCorrectAnswer() == answer) {
      iconForAnswer = const Icon(
        Icons.check,
        color: Colors.green,
      );
    } else {
      iconForAnswer = const Icon(
        Icons.close,
        color: Colors.red,
      );
    }
    setState(() {
      if (!quizBrain.isFinished()) {
        scoreKeeper.add(iconForAnswer);
        quizBrain.nextQuestion();
      } else {
        //alert completed quiz and reset
        Alert(
            context: context,
            type: AlertType.none,
            title: 'Success',
            desc: 'You have successfully completed the Quiz.',
            buttons: [
              DialogButton(
                child: Text(
                  'Ok',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                width: 120,
                onPressed: () {
                  setState(() {
                    scoreKeeper.clear();
                    quizBrain.reset();
                  });
                  Navigator.pop(context);
                },
              ),
            ]).show();
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ElevatedButton(
            child: Text(
              'True',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(color: Colors.white)),
            onPressed: () {
              //The user picker true
              updateQuestion(true);
            },
          ),
        )),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  textStyle: TextStyle(color: Colors.white)),
              child: Text(
                'False',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {
                //The user picked false.
                updateQuestion(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
