import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';

import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  String selectedScreen = 'Start-screen';
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
  }

  switchScreen() {
    setState(() {
      selectedScreen = 'Question-screen';
      selectedAnswer = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    print(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedScreen = 'Result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (selectedScreen == 'Start-screen') {
      activeScreen = StartScreen(switchScreen);
    }
    if (selectedScreen == 'Question-screen') {
      activeScreen = QuestionScreen(chooseAnswer);
    }
    if (selectedScreen == 'Result-screen') {
      activeScreen = ResultScreen(selectedAnswer,switchScreen);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 138, 165, 146),
                Color.fromARGB(255, 111, 86, 113),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
