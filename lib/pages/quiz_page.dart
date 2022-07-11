import 'package:fire_safety/pages/quiz/home_exterior_quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
              children: [
                Text('Quiz'),
                Center(child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const HomeExteriorQuizPage();
                      }));
                    },
                    child: const Text('Start')))
              ])
        )
    );
  }
}
