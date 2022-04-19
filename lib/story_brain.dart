import 'package:flutter_app/story_question.dart';

class StoryBrain {
  int _currentStory = 0;
  final List<StoryQuestion> _storyQuestions = [
    StoryQuestion(
        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        'I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.'),
    StoryQuestion(
        'He nods slowly, unphased by the question.',
        'At least he\'s honest. I\'ll climb in.',
        'Wait, I know how to change a tire.'),
    StoryQuestion(
        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'),
    StoryQuestion(
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
        ''),
    StoryQuestion(
        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        'Restart',
        ''),
    StoryQuestion(
        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        'Restart',
        '')
  ];

  String getStory() => _storyQuestions[_currentStory].question;
  String getDestructiveChoice() =>
      _storyQuestions[_currentStory].destructiveChoice;
  String getConstructiveChoice() =>
      _storyQuestions[_currentStory].constructiveChoice;

  ///1 destructive, 2 constructive
  void nextStory(int choice) {
    if (_currentStory == 0) {
      if (choice == 1) {
        _currentStory = 2;
      } else {
        _currentStory = 1;
      }
    } else if (_currentStory == 2) {
      if (choice == 1) {
        _currentStory = 5;
      } else {
        _currentStory = 4;
      }
    } else if (_currentStory == 1) {
      if (choice == 1) {
        _currentStory = 2;
      } else {
        _currentStory = 3;
      }
    } else {
      reset();
    }
  }

  void reset() {
    _currentStory = 0;
  }

  bool buttonShouldBeVisible() {
    if (_currentStory == 0 || _currentStory == 1 || _currentStory == 2) {
      return true;
    } else {
      return false;
    }
  }
}
