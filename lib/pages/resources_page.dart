import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesPage extends StatefulWidget {
  const ResourcesPage({Key? key}) : super(key: key);

  @override
  State<ResourcesPage> createState() => _ResourcesPage();
}
final Uri _url1 = Uri.parse('http://www.nfpa.org');
final Uri _url2 = Uri.parse('https://www.pge.org/');
final Uri _url3 = Uri.parse('https://www.safekids.org');
final Uri _url4 = Uri.parse('https://www.SCCFD.org');
final Uri _url5 = Uri.parse('https://www.SCCfiresafe.org');
const String _phonenumber1 = ' 800.344.3555';
const String _phonenumber2 = ' 800.743.5000';
const String _phonenumber3 = ' 202.668.0600';
const String _phonenumber4 = ' 408.378.4010';
const String _phonenumber5 = ' 408.975.9591';
class _ResourcesPage extends State<ResourcesPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
                children: [
                  Text(AppLocalizations.of(context)!.resources_page_title,textScaleFactor: 2),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: AppLocalizations.of(context)!.resources_page_link1,
                          style: new TextStyle(color: Colors.blue,height:2),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {_launchUrl(_url1);}
                        ),
                        TextSpan(
                            text: _phonenumber1,
                            style: new TextStyle(color: Colors.black)
                        )]
                      )
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: AppLocalizations.of(context)!.resources_page_link2,
                            style: new TextStyle(color: Colors.blue,height:2),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {_launchUrl(_url2);}
                        ),
                        TextSpan(
                            text: _phonenumber2,
                            style: new TextStyle(color: Colors.black)
                        )]
                      )
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: AppLocalizations.of(context)!.resources_page_link3,
                            style: new TextStyle(color: Colors.blue,height:2),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {_launchUrl(_url3);}
                        ),
                        TextSpan(
                            text: _phonenumber3,
                            style: new TextStyle(color: Colors.black)
                        )]
                      )
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: AppLocalizations.of(context)!.resources_page_link4,
                            style: new TextStyle(color: Colors.blue,height:2),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {_launchUrl(_url4);}
                        ),
                        TextSpan(
                            text: _phonenumber4,
                            style: new TextStyle(color: Colors.black)
                        )]
                      )
                  ),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: AppLocalizations.of(context)!.resources_page_link5,
                            style: new TextStyle(color: Colors.blue,height:2),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {_launchUrl(_url5);}
                        ),
                        TextSpan(
                            text: _phonenumber5,
                            style: new TextStyle(color: Colors.black)
                        )]
                      )
                  )
                ]
            )
        )
    );
  }
}
Future<void> _launchUrl(Uri _url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}