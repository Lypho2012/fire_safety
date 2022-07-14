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
List<bool> isChecked = List<bool>.filled(5, false);
class _NotificationsPage extends State<NotificationsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListView(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(AppLocalizations.of(context)!.notifications_page_title,textScaleFactor: 3)
                  )
                ])
        )
    );
  }
}