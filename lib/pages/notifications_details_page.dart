import 'package:fire_safety/pages/quiz_page.dart';
import 'package:fire_safety/pages/resources_page.dart';
import 'package:fire_safety/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'home_checklist_page.dart';
import 'notifications_page.dart';

List<List<String>> notification_details = [[],[],[]];

class NotificationsDetailsPage extends StatefulWidget {
  NotificationsDetailsPage({Key? key, required int notificationID}) : super(key: key);

  @override
  State<NotificationsDetailsPage> createState() => _NotificationsDetailsPage();
}
class _NotificationsDetailsPage extends State<NotificationsDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Padding(
                padding: const EdgeInsets.all(100),
                child: Text()
            )
        );
  }
}