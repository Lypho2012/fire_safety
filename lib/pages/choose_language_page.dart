import 'package:fire_safety/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ChooseLanguagePage extends StatefulWidget {
  const ChooseLanguagePage({Key? key}) : super(key: key);

  @override
  State<ChooseLanguagePage> createState() => _ChooseLanguagePage();
}
enum SingingCharacter {english, spanish}
class _ChooseLanguagePage extends State<ChooseLanguagePage> {
  SingingCharacter? _character = SingingCharacter.english;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top:100),
            child: Column(
                children: [
                  Text('Welcome!'),
                  Text('Choose a language to continue in:'),
                  ListTile(
                    title: const Text('English'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.english,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Spanish'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.spanish,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
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
