import 'package:fire_safety/pages/quiz/smoke_alarms_quiz_page.dart';
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
  List<bool> isChecked = List<bool>.filled(4, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 100),
          child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Text(counter.toString())
                  )
                ),
                CheckboxListTile(
                  title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox1),
                  checkColor: Colors.white,
                  value: isChecked[0],
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[0] = value!;
                      if (isChecked[0]) {
                        counter ++;
                      } else {
                        counter --;
                      }
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading
                ),
                CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox2),
                    checkColor: Colors.white,
                    value: isChecked[1],
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked[1] = value!;
                        if (isChecked[1]) {
                          counter ++;
                        } else {
                          counter --;
                        }
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading
                ),
                CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox3),
                    checkColor: Colors.white,
                    value: isChecked[2],
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked[2] = value!;
                        if (isChecked[2]) {
                          counter ++;
                        } else {
                          counter --;
                        }
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading
                ),
                CheckboxListTile(
                    title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox4),
                    checkColor: Colors.white,
                    value: isChecked[3],
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked[3] = value!;
                        if (isChecked[3]) {
                          counter ++;
                        } else {
                          counter --;
                        }
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const SmokeAlarmsQuizPage();
                      }));
                    },
                    child: const Text('Next'))
              ])
        )
    );
  }
}
