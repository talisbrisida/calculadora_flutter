// main.dart
import 'package:flutter/material.dart';
import 'models/question.dart';
import 'widgets/checkbox_question_widget.dart';
import 'widgets/radio_question_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questionário',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const QuestionnairePage(),
    );
  }
}

class QuestionnairePage extends StatelessWidget {
  const QuestionnairePage({super.key});

  final List<Question> questions = const [
    Question(
      text: 'Quais cursos você conhece?',
      options: ['Desenv. Sistemas', 'Automação', 'Administração'],
      type: QuestionType.checkbox,
    ),
    Question(
      text: 'Quais cursos você conhece?',
      options: ['Desenv. Sistemas', 'Automação', 'Administração'],
      type: QuestionType.checkbox,
    ),
    Question(
      text: 'Quais cursos você conhece?',
      options: ['Desenv. Sistemas', 'Automação', 'Administração'],
      type: QuestionType.checkbox,
    ),
    Question(
      text: 'Quais cursos você conhece?',
      options: ['Desenv. Sistemas', 'Automação', 'Administração'],
      type: QuestionType.checkbox,
    ),
    Question(
      text: 'Quais cursos você conhece?',
      options: ['Desenv. Sistemas', 'Automação', 'Administração'],
      type: QuestionType.checkbox,
    ),
    Question(
      text: 'Quais cursos você conhece?',
      options: ['Desenv. Sistemas', 'Automação', 'Administração'],
      type: QuestionType.checkbox,
    ),
    Question(
      text: 'Quais cursos você conhece?',
      options: ['Desenv. Sistemas', 'Automação', 'Administração'],
      type: QuestionType.checkbox,
    ),
    Question(
      text: 'Qual período você prefere?',
      options: ['Matutino', 'Vespertino', 'Noturno'],
      type: QuestionType.radio,
    ),
    Question(
      text: 'Qual período você prefere?',
      options: ['Matutino', 'Vespertino', 'Noturno'],
      type: QuestionType.radio,
    ),
    Question(
      text: 'Qual período você prefere?',
      options: ['Matutino', 'Vespertino', 'Noturno'],
      type: QuestionType.radio,
    ),
    Question(
      text: 'Qual período você prefere?',
      options: ['Matutino', 'Vespertino', 'Noturno'],
      type: QuestionType.radio,
    ),
    Question(
      text: 'Qual período você prefere?',
      options: ['Matutino', 'Vespertino', 'Noturno'],
      type: QuestionType.radio,
    ),
    Question(
      text: 'Qual período você prefere?',
      options: ['Matutino', 'Vespertino', 'Noturno'],
      type: QuestionType.radio,
    ),
    Question(
      text: 'Qual período você prefere?',
      options: ['Matutino', 'Vespertino', 'Noturno'],
      type: QuestionType.radio,
    ),
    // Adicione mais 28 perguntas aqui seguindo o mesmo padrão
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Questionário')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          if (question.type == QuestionType.checkbox) {
            return CheckboxQuestionWidget(question: question);
          } else {
            return RadioQuestionWidget(question: question);
          }
        },
      ),
    );
  }
}
