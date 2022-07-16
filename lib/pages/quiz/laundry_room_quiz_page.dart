import 'package:fire_safety/pages/quiz/electricity_and_appliances_quiz_page.dart';
import 'package:fire_safety/pages/quiz/smoke_alarms_quiz_page.dart';
import 'package:fire_safety/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'heating_equipment_quiz_page.dart';
class LaundryRoomQuizPage extends StatefulWidget {
  const LaundryRoomQuizPage({Key? key}) : super(key: key);

  @override
  State<LaundryRoomQuizPage> createState() => _LaundryRoomQuizPage();
}
int numCheckboxes = 3;
bool skipped = false;
List<bool> isChecked = List<bool>.filled(numCheckboxes, false);
class _LaundryRoomQuizPage extends State<LaundryRoomQuizPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 100),
            child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(AppLocalizations.of(context)!.laundry_room_quiz_page_title,textScaleFactor: 2)
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const HeatingEquipmentQuizPage();
                                }));
                                total -= numCheckboxes;
                                skipped = true;
                              },
                              child: const Text('Skip (I don\'t have one)'))
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text("Score: $counter / $total")
                      )
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.laundry_room_quiz_page_checkbox1),
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
                      title: Text(AppLocalizations.of(context)!.laundry_room_quiz_page_checkbox2),
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
                      title: Text(AppLocalizations.of(context)!.laundry_room_quiz_page_checkbox3),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const ElectricityAndAppliancesQuizPage();
                                }));
                              },
                              child: const Text('Prev'))
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const HeatingEquipmentQuizPage();
                                }));
                              },
                              child: const Text('Next'))
                      )
                    ],
                  )
                ])
        )
    );
  }
}