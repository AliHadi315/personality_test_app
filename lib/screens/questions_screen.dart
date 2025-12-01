import 'package:flutter/material.dart';
import 'package:personality_test/models/questions.dart';
import '../models/personality.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(Personality) onAnswer;

  const QuestionScreen({required this.question, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            question.text,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ...question.answers.map(
            (answer) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: ElevatedButton(
                onPressed: () => onAnswer(answer.personality),
                child: Text(answer.text),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
