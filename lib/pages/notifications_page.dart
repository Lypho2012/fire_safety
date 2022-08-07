import 'dart:async';

import 'package:fire_safety/pages/quiz/laundry_room_quiz_page.dart';
import 'package:fire_safety/pages/quiz/smoke_alarms_quiz_page.dart';
import 'package:fire_safety/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPage();
}
List<Widget> mail = [];
const int numReminders = 3;
List<int> lastMonthUpdatedReminder = [-1,-6,0];
List<int> lastYearUpdatedReminder = [-1,-1,0];
List<int> monthlyFrequencyOfReminder = [1,6,0];
List<int> yearlyFrequencyOfReminder = [0,0,1];
Timer? timer;
class _NotificationsPage extends State<NotificationsPage> {
  @override
  void initState() {
    super.initState();
    // adb setprop myfireapp.check.duration=3
    // read via https://github.com/anuoua/system_properties
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) => checkForNewMail());
  }
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                children: [
                  Text(AppLocalizations.of(context)!.notifications_page_title,textScaleFactor: 2),
                  ListView(
                    shrinkWrap: true,
                    children: _getMail(),
                  )
                ]
            )
        )
    );
  }

  List<Widget> _getMail() {
    if (mail.isEmpty) {
      return [
        const Text('No new notifications', textScaleFactor: 1.5,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey))
      ];
    } else {
      return mail;
    }
  }

  void checkForNewMail() {
    int curMonth = DateTime.now().month;
    int curYear = DateTime.now().year;
    for (int i=0; i<numReminders; i++) {
      if (curMonth-lastMonthUpdatedReminder[i] >= monthlyFrequencyOfReminder[i] &&
          curYear-lastYearUpdatedReminder[i] >= yearlyFrequencyOfReminder[i]) {
        mail.insert(0,_getNewMail(i));
        print(true);
        lastMonthUpdatedReminder[i] = curMonth;
        lastYearUpdatedReminder[i] = curYear;
      }
    }
    setState(() {});
  }

  Widget _getNewMail(int reminder) {
    List<String> reminders = [AppLocalizations.of(context)!.notifications_page_reminder1,AppLocalizations.of(context)!.notifications_page_reminder2,AppLocalizations.of(context)!.notifications_page_reminder3];
    return OutlinedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SmokeAlarmsQuizPage();}));
          },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(BeveledRectangleBorder())
        ),
        child: Text(
            reminders[reminder],
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.left,
        )
    );
  }
}