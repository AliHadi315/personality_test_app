import 'package:flutter/material.dart';
import 'package:personality_test/screens/questions_screen.dart';
import 'questions.dart';
import 'models/personality.dart';
import 'screens/start_screen.dart';
import 'screens/result_screen.dart';

class PersonalityTestApp extends StatefulWidget {
  @override
  _PersonalityTestAppState createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  int _currentQuestionIndex = 0;
  Map<Personality, int> _scores = {
    Personality.Feeler: 0,
    Personality.Thinker: 0,
    Personality.Planner: 0,
    Personality.Adventurer: 0,
  };

  bool _testStarted = false;
  bool _testFinished = false;
  Personality? _result;

  void _startTest() {
    setState(() {
      _testStarted = true;
      _testFinished = false;
      _currentQuestionIndex = 0;
      _scores.updateAll((key, value) => 0);
    });
  }

  void _answerQuestion(Personality personality) {
    _scores[personality] = _scores[personality]! + 1;
    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      setState(() {
        _testFinished = true;
        _result = _scores.entries
            .reduce((a, b) => a.value > b.value ? a : b)
            .key;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_testStarted) {
      return StartScreen(onStart: _startTest);
    } else if (_testFinished) {
      return ResultScreen(result: _result!, onRestart: _startTest);
    } else {
      return QuestionScreen(
        question: questions[_currentQuestionIndex],
        onAnswer: _answerQuestion,
      );
    }
  }
}
