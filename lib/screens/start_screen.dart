import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStart;

  const StartScreen({required this.onStart});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover Your Personality Type!",
            style: TextStyle(fontSize: 22),
          ),
          Text("💖🗺️", style: TextStyle(fontSize: 22)),
          Text("📆🧠", style: TextStyle(fontSize: 22)),
          SizedBox(height: 20),
          ElevatedButton(onPressed: onStart, child: Text("Start Test")),
        ],
      ),
    );
  }
}
