import 'package:fire_safety/pages/quiz/heating_equipment_quiz_page.dart';
import 'package:fire_safety/pages/quiz/smoke_alarms_quiz_page.dart';
import 'package:fire_safety/pages/quiz_page.dart';
import 'package:fire_safety/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'home_checklist_page.dart';
import 'notifications_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}
List<bool> isChecked = List<bool>.filled(41, false);
class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.home_page_title),
              bottom: TabBar(
                  tabs: [
                    Tab(text: "home"), // TODO: replace with home icon
                    Tab(text: "quiz"), // TODO: replace with quiz icon
                    Tab(text: "notifications"), // TODO: replace with notifications icon
                    Tab(text: "settings") // TODO: replace with settings icon
                  ]
              ),
            ),
            body: TabBarView(
                children: [
                  HomeChecklistPage(),
                  QuizPage(title: ''),
                  NotificationsPage(),
                  SettingsPage()
                ]
            )
        ));
  }
}