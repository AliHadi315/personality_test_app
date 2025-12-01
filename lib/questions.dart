import 'package:personality_test/models/questions.dart';
import '../models/answer.dart';
import '../models/personality.dart';

final questions = [
  Question(
    text: "How do you approach a difficult decision?",
    answers: [
      Answer(
        text: "Analyze all options logically",
        personality: Personality.Thinker,
      ),
      Answer(
        text: "Go with what feels right emotionally",
        personality: Personality.Feeler,
      ),
      Answer(
        text: "Make a checklist and plan it out",
        personality: Personality.Planner,
      ),
      Answer(
        text: "Take a leap and deal with results later",
        personality: Personality.Adventurer,
      ),
    ],
  ),
  Question(
    text: "What excites you the most?",
    answers: [
      Answer(
        text: "Solving complex problems",
        personality: Personality.Thinker,
      ),
      Answer(
        text: "Connecting deeply with others",
        personality: Personality.Feeler,
      ),
      Answer(
        text: "Creating a clear path to your goals",
        personality: Personality.Planner,
      ),
      Answer(
        text: "Exploring something new",
        personality: Personality.Adventurer,
      ),
    ],
  ),
  Question(
    text: "Which best describes your work style?",
    answers: [
      Answer(
        text: "Detail-focused and logical",
        personality: Personality.Thinker,
      ),
      Answer(
        text: "People-centered and intuitive",
        personality: Personality.Feeler,
      ),
      Answer(
        text: "Organized and systematic",
        personality: Personality.Planner,
      ),
      Answer(
        text: "Flexible and spontaneous",
        personality: Personality.Adventurer,
      ),
    ],
  ),
  Question(
    text: "How do you recharge after a long day?",
    answers: [
      Answer(
        text: "Quiet reflection or reading",
        personality: Personality.Thinker,
      ),
      Answer(
        text: "Spending time with close friends",
        personality: Personality.Feeler,
      ),
      Answer(
        text: "Planning tomorrow's tasks",
        personality: Personality.Planner,
      ),
      Answer(
        text: "Doing something active or exciting",
        personality: Personality.Adventurer,
      ),
    ],
  ),
  Question(
    text: "You're most comfortable when...?",
    answers: [
      Answer(
        text: "Things make logical sense",
        personality: Personality.Thinker,
      ),
      Answer(
        text: "Everyone is getting along",
        personality: Personality.Feeler,
      ),
      Answer(
        text: "There's a clear structure",
        personality: Personality.Planner,
      ),
      Answer(
        text: "You're free to try new things",
        personality: Personality.Adventurer,
      ),
    ],
  ),
  Question(
    text: "Your biggest strength is...",
    answers: [
      Answer(text: "Thinking critically", personality: Personality.Thinker),
      Answer(text: "Empathizing with others", personality: Personality.Feeler),
      Answer(text: "Staying organized", personality: Personality.Planner),
      Answer(text: "Being adventurous", personality: Personality.Adventurer),
    ],
  ),
];
