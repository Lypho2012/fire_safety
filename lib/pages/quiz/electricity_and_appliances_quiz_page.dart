import 'package:fire_safety/pages/quiz_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'co_alarms_quiz_page.dart';
import 'laundry_room_quiz_page.dart';
class ElectricityAndAppliancesQuizPage extends StatefulWidget {
  const ElectricityAndAppliancesQuizPage({Key? key}) : super(key: key);

  @override
  State<ElectricityAndAppliancesQuizPage> createState() => _ElectricityAndAppliancesQuizPage();
}
List<bool> isChecked = List<bool>.filled(11, false);
class _ElectricityAndAppliancesQuizPage extends State<ElectricityAndAppliancesQuizPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 100),
            child: ListView(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_title,textScaleFactor: 2)
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Text("Score: $counter / $total")
                      )
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox1),
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
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox2),
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
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox3),
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
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox4),
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
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox5),
                      checkColor: Colors.white,
                      value: isChecked[4],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[4] = value!;
                          if (isChecked[4]) {
                            counter ++;
                          } else {
                            counter --;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox6),
                      checkColor: Colors.white,
                      value: isChecked[5],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[5] = value!;
                          if (isChecked[5]) {
                            counter ++;
                          } else {
                            counter --;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox7),
                      checkColor: Colors.white,
                      value: isChecked[6],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[6] = value!;
                          if (isChecked[6]) {
                            counter ++;
                          } else {
                            counter --;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox8),
                      checkColor: Colors.white,
                      value: isChecked[7],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[7] = value!;
                          if (isChecked[7]) {
                            counter ++;
                          } else {
                            counter --;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox9),
                      checkColor: Colors.white,
                      value: isChecked[8],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[8] = value!;
                          if (isChecked[8]) {
                            counter ++;
                          } else {
                            counter --;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox10),
                      checkColor: Colors.white,
                      value: isChecked[9],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[9] = value!;
                          if (isChecked[9]) {
                            counter ++;
                          } else {
                            counter --;
                          }
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading
                  ),
                  CheckboxListTile(
                      title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox11),
                      checkColor: Colors.white,
                      value: isChecked[10],
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked[10] = value!;
                          if (isChecked[10]) {
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
                                  return const COAlarmsQuizPage();
                                }));
                              },
                              child: const Text('Prev'))
                      ),
                      Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const LaundryRoomQuizPage();
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