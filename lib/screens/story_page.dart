import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/story_brain.dart';

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatelessWidget {
  static const routeName = 'story';

  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'images/background.png',
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Story'),
          ),
          body: SafeArea(
            child: StoryStatePage(),
          ),
        ),
      ],
    );
  }
}

class StoryStatePage extends StatefulWidget {
  const StoryStatePage({Key? key}) : super(key: key);

  @override
  State<StoryStatePage> createState() => _StoryStatePageState();
}

class _StoryStatePageState extends State<StoryStatePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 6,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                storyBrain.getStory(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  storyBrain.nextStory(1);
                });
              },
              child: Text(
                storyBrain.getDestructiveChoice(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Visibility(
              visible: storyBrain.buttonShouldBeVisible(),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    storyBrain.nextStory(2);
                  });
                },
                child: Text(
                  storyBrain.getConstructiveChoice(),
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
            ),
          ),
        )
      ],
    );
  }
}
