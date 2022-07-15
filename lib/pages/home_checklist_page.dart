import 'package:fire_safety/pages/quiz/laundry_room_quiz_page.dart' as laundry_room_quiz_page;
import 'package:fire_safety/pages/quiz/smoke_alarms_quiz_page.dart' as smoke_alarms_quiz_page;
import 'package:fire_safety/pages/quiz/home_exterior_quiz_page.dart' as home_exterior_quiz_page;
import 'package:fire_safety/pages/quiz/co_alarms_quiz_page.dart' as co_alarms_quiz_page;
import 'package:fire_safety/pages/quiz/electricity_and_appliances_quiz_page.dart' as electricity_and_appliances_quiz_page;

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
                  ),
                  Visibility(
                      visible: !home_exterior_quiz_page.isChecked[2],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox3),
                          checkColor: Colors.white,
                          value: home_exterior_quiz_page.isChecked[2],
                          onChanged: (bool? value) {
                            setState(() {
                              home_exterior_quiz_page.isChecked[2] = value!;
                              if (home_exterior_quiz_page.isChecked[2]) {
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
                      visible: !home_exterior_quiz_page.isChecked[3],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.home_exterior_quiz_page_checkbox4),
                          checkColor: Colors.white,
                          value: home_exterior_quiz_page.isChecked[3],
                          onChanged: (bool? value) {
                            setState(() {
                              home_exterior_quiz_page.isChecked[3] = value!;
                              if (home_exterior_quiz_page.isChecked[3]) {
                                counter ++;
                              } else {
                                counter --;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading
                      )
                  ),
                  Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_title),
                  Visibility(
                      visible: !smoke_alarms_quiz_page.isChecked[0],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox1),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[0],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[0] = value!;
                              if (smoke_alarms_quiz_page.isChecked[0]) {
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
                      visible: !smoke_alarms_quiz_page.isChecked[1],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox2),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[1],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[1] = value!;
                              if (smoke_alarms_quiz_page.isChecked[1]) {
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
                      visible: !smoke_alarms_quiz_page.isChecked[2],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox3),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[2],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[2] = value!;
                              if (smoke_alarms_quiz_page.isChecked[2]) {
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
                      visible: !smoke_alarms_quiz_page.isChecked[3],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox4),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[3],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[3] = value!;
                              if (smoke_alarms_quiz_page.isChecked[3]) {
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
                      visible: !smoke_alarms_quiz_page.isChecked[4],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox5),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[4],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[4] = value!;
                              if (smoke_alarms_quiz_page.isChecked[4]) {
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
                      visible: !smoke_alarms_quiz_page.isChecked[5],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox6),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[5],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[5] = value!;
                              if (smoke_alarms_quiz_page.isChecked[5]) {
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
                      visible: !smoke_alarms_quiz_page.isChecked[6],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox7),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[6],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[6] = value!;
                              if (smoke_alarms_quiz_page.isChecked[6]) {
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
                      visible: !smoke_alarms_quiz_page.isChecked[7],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.smoke_alarms_quiz_page_checkbox8),
                          checkColor: Colors.white,
                          value: smoke_alarms_quiz_page.isChecked[7],
                          onChanged: (bool? value) {
                            setState(() {
                              smoke_alarms_quiz_page.isChecked[7] = value!;
                              if (smoke_alarms_quiz_page.isChecked[7]) {
                                counter ++;
                              } else {
                                counter --;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading
                      )
                  ),
                  Text(AppLocalizations.of(context)!.co_alarms_quiz_page_title),
                  Visibility(
                      visible: !co_alarms_quiz_page.isChecked[0],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.co_alarms_quiz_page_checkbox1),
                          checkColor: Colors.white,
                          value: co_alarms_quiz_page.isChecked[0],
                          onChanged: (bool? value) {
                            setState(() {
                              co_alarms_quiz_page.isChecked[0] = value!;
                              if (co_alarms_quiz_page.isChecked[0]) {
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
                      visible: !co_alarms_quiz_page.isChecked[1],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.co_alarms_quiz_page_checkbox2),
                          checkColor: Colors.white,
                          value: co_alarms_quiz_page.isChecked[1],
                          onChanged: (bool? value) {
                            setState(() {
                              co_alarms_quiz_page.isChecked[1] = value!;
                              if (co_alarms_quiz_page.isChecked[1]) {
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
                      visible: !co_alarms_quiz_page.isChecked[2],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.co_alarms_quiz_page_checkbox3),
                          checkColor: Colors.white,
                          value: co_alarms_quiz_page.isChecked[2],
                          onChanged: (bool? value) {
                            setState(() {
                              co_alarms_quiz_page.isChecked[2] = value!;
                              if (co_alarms_quiz_page.isChecked[2]) {
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
                      visible: !co_alarms_quiz_page.isChecked[3],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.co_alarms_quiz_page_checkbox4),
                          checkColor: Colors.white,
                          value: co_alarms_quiz_page.isChecked[3],
                          onChanged: (bool? value) {
                            setState(() {
                              co_alarms_quiz_page.isChecked[3] = value!;
                              if (co_alarms_quiz_page.isChecked[3]) {
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
                      visible: !co_alarms_quiz_page.isChecked[4],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.co_alarms_quiz_page_checkbox5),
                          checkColor: Colors.white,
                          value: co_alarms_quiz_page.isChecked[4],
                          onChanged: (bool? value) {
                            setState(() {
                              co_alarms_quiz_page.isChecked[4] = value!;
                              if (co_alarms_quiz_page.isChecked[4]) {
                                counter ++;
                              } else {
                                counter --;
                              }
                            });
                          },
                          controlAffinity: ListTileControlAffinity.leading
                      )
                  ),
                  Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_title),
                  Visibility(
                      visible: !electricity_and_appliances_quiz_page.isChecked[0],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox1),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[0],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[0] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[0]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[1],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox2),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[1],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[1] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[1]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[2],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox3),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[2],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[2] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[2]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[3],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox4),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[3],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[3] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[3]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[4],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox5),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[4],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[4] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[4]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[5],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox6),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[5],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[5] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[5]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[6],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox7),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[6],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[6] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[6]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[7],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox8),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[7],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[7] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[7]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[8],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox9),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[8],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[8] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[8]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[9],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox10),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[9],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[9] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[9]) {
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
                      visible: !electricity_and_appliances_quiz_page.isChecked[10],
                      child: CheckboxListTile(
                          title: Text(AppLocalizations.of(context)!.electricity_appliances_quiz_page_checkbox11),
                          checkColor: Colors.white,
                          value: electricity_and_appliances_quiz_page.isChecked[10],
                          onChanged: (bool? value) {
                            setState(() {
                              electricity_and_appliances_quiz_page.isChecked[10] = value!;
                              if (electricity_and_appliances_quiz_page.isChecked[10]) {
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