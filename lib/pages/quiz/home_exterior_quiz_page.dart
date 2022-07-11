import 'package:fire_safety/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeExteriorQuizPage extends StatefulWidget {
  const HomeExteriorQuizPage({Key? key}) : super(key: key);

  @override
  State<HomeExteriorQuizPage> createState() => _HomeExteriorQuizPage();
}
class _HomeExteriorQuizPage extends State<HomeExteriorQuizPage> {
  List<bool> isChecked = List<bool>.filled(10, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked[0],
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[0] = value!;
                    });
                  },
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const QuizPage(title: 'QuizPage');
                      }));
                    },
                    child: const Text('Next'))
              ])
        )
    );
  }
}