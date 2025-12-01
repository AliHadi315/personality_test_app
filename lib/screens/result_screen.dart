import 'package:flutter/material.dart';
import '../models/personality.dart';

final personalityMessages = {
  Personality.Feeler:
      'You are a Feeler💖\nEmpathetic, warm, and guided by emotion.',
  Personality.Thinker:
      'You are a Thinker🧠\nLogical, curious, and focused on ideas.',
  Personality.Planner:
      'You are a Planner📆\nOrganized, strategic, and goal-oriented.',
  Personality.Adventurer:
      'You are an Adventurer🗺️\nSpontaneous, bold, and always exploring.',
};

class ResultScreen extends StatelessWidget {
  final Personality result;
  final VoidCallback onRestart;

  const ResultScreen({required this.result, required this.onRestart});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            personalityMessages[result] ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: onRestart, child: Text("Restart Test")),
        ],
      ),
    );
  }
}
