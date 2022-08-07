import 'package:fire_safety/pages/quiz_page.dart';
import 'package:fire_safety/pages/resources_page.dart';
import 'package:fire_safety/pages/settings_page.dart';
import 'package:flutter/material.dart';
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
        initialIndex: 0,
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.home_page_title),
              bottom: const TabBar(
                  tabs: [
                    Icon(Icons.home),
                    Icon(Icons.assignment),
                    Icon(Icons.notifications),
                    Icon(Icons.link),
                    Icon(Icons.settings)
                  ]
              ),
            ),
            body: const TabBarView(
                children: [
                  HomeChecklistPage(),
                  QuizPage(title: ''),
                  NotificationsPage(),
                  ResourcesPage(),
                  SettingsPage()
                ]
            )
        ));
  }
}