import 'package:fire_safety/pages/quiz/laundry_room_quiz_page.dart';
import 'package:fire_safety/pages/quiz/smoke_alarms_quiz_page.dart';
import 'package:fire_safety/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPage();
}
List<bool> isChecked = List<bool>.filled(5, false);
class _SettingsPage extends State<SettingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListView(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(AppLocalizations.of(context)!.settings_page_title,textScaleFactor: 3)
                  )
                ])
        )
    );
  }
}