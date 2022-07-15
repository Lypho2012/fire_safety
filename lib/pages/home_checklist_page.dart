import 'package:fire_safety/pages/quiz/laundry_room_quiz_page.dart' as laundry_room_quiz_page;
import 'package:fire_safety/pages/quiz/smoke_alarms_quiz_page.dart' as smoke_alarms_quiz_page;
import 'package:fire_safety/pages/quiz/home_exterior_quiz_page.dart' as home_exterior_quiz_page;
import 'package:fire_safety/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeChecklistPage extends StatefulWidget {
  const HomeChecklistPage({Key? key}) : super(key: key);

  @override
  State<HomeChecklistPage> createState() => _HomeChecklistPage();
}
List<bool> isChecked = List<bool>.filled(5, false);
class _HomeChecklistPage extends State<HomeChecklistPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: ListView(
                children: [
                  Text(AppLocalizations.of(context)!.home_checklist_page_title,textScaleFactor: 3),
                  Text(AppLocalizations.of(context)!.home_exterior_quiz_page_title),
                  Visibility(
                      visible: !home_exterior_quiz_page.isChecked[0],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox1),
                          checkColor: Colors.white,
                          value: home_exterior_quiz_page.isChecked[0],
                          onChanged: (bool? value) {
                            setState(() {
                              home_exterior_quiz_page.isChecked[0] = value!;
                              if (home_exterior_quiz_page.isChecked[0]) {
                                counter ++;
                              } else {
                                counter --;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading
                      )
                  ),
                  Visibility(
                      visible: !home_exterior_quiz_page.isChecked[1],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox2),
                          checkColor: Colors.white,
                          value: home_exterior_quiz_page.isChecked[1],
                          onChanged: (bool? value) {
                            setState(() {
                              home_exterior_quiz_page.isChecked[1] = value!;
                              if (home_exterior_quiz_page.isChecked[1]) {
                                counter ++;
                              } else {
                                counter --;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading
                      )
                  )
                ])
        )
    );
  }
}