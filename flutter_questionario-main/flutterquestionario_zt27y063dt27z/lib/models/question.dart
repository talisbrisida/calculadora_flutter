enum QuestionType { checkbox, radio }

class Question {
  final String text;
  final List<String> options;
  final QuestionType type;

  const Question({
    required this.text,
    required this.options,
    required this.type,
  });
}
