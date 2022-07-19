
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @home_exterior_quiz_page_title.
  ///
  /// In en, this message translates to:
  /// **'Home Exterior'**
  String get home_exterior_quiz_page_title;

  /// No description provided for @home_exterior_quiz_page_checkbox1.
  ///
  /// In en, this message translates to:
  /// **'Ensure home address numbers are a minimum of 4 inches tall and clearly visible from the street'**
  String get home_exterior_quiz_page_checkbox1;

  /// No description provided for @home_exterior_quiz_page_checkbox2.
  ///
  /// In en, this message translates to:
  /// **'For homes located more than 50 feet from the street, post address numbers at the driveway entrance'**
  String get home_exterior_quiz_page_checkbox2;

  /// No description provided for @home_exterior_quiz_page_checkbox3.
  ///
  /// In en, this message translates to:
  /// **'Trim trees away from overhead electrical wires and chimney'**
  String get home_exterior_quiz_page_checkbox3;

  /// No description provided for @home_exterior_quiz_page_checkbox4.
  ///
  /// In en, this message translates to:
  /// **'Remove leaves/debris from roof, eaves and gutters'**
  String get home_exterior_quiz_page_checkbox4;

  /// No description provided for @smoke_alarms_quiz_page_title.
  ///
  /// In en, this message translates to:
  /// **'Smoke Alarms'**
  String get smoke_alarms_quiz_page_title;

  /// No description provided for @smoke_alarms_quiz_page_checkbox1.
  ///
  /// In en, this message translates to:
  /// **'Different types of smoke alarms, ionization and photoelectric, detect fire in different ways. Experts recommend having both types in your home'**
  String get smoke_alarms_quiz_page_checkbox1;

  /// No description provided for @smoke_alarms_quiz_page_checkbox2.
  ///
  /// In en, this message translates to:
  /// **'A combination of working smoke alarms and fire sprinklers decreases the risk of dying'**
  String get smoke_alarms_quiz_page_checkbox2;

  /// No description provided for @smoke_alarms_quiz_page_checkbox3.
  ///
  /// In en, this message translates to:
  /// **'Smoke alarms are tested each month'**
  String get smoke_alarms_quiz_page_checkbox3;

  /// No description provided for @smoke_alarms_quiz_page_checkbox4.
  ///
  /// In en, this message translates to:
  /// **'Smoke alarm batteries are changed as need (annually unless they are life long)'**
  String get smoke_alarms_quiz_page_checkbox4;

  /// No description provided for @smoke_alarms_quiz_page_checkbox5.
  ///
  /// In en, this message translates to:
  /// **'Smoke alarms are on every level of the home'**
  String get smoke_alarms_quiz_page_checkbox5;

  /// No description provided for @smoke_alarms_quiz_page_checkbox6.
  ///
  /// In en, this message translates to:
  /// **'Smoke alarms are inside and outside sleeping areas'**
  String get smoke_alarms_quiz_page_checkbox6;

  /// No description provided for @smoke_alarms_quiz_page_checkbox7.
  ///
  /// In en, this message translates to:
  /// **'Smoke alarms are less than 10 years old'**
  String get smoke_alarms_quiz_page_checkbox7;

  /// No description provided for @smoke_alarms_quiz_page_checkbox8.
  ///
  /// In en, this message translates to:
  /// **'Install adaptive smoke alarms for occupants with special needs'**
  String get smoke_alarms_quiz_page_checkbox8;

  /// No description provided for @co_alarms_quiz_page_title.
  ///
  /// In en, this message translates to:
  /// **'CO Alarms'**
  String get co_alarms_quiz_page_title;

  /// No description provided for @co_alarms_quiz_page_checkbox1.
  ///
  /// In en, this message translates to:
  /// **'Test CO alarms once a month (use a broom handle to reach ceiling mounted units)'**
  String get co_alarms_quiz_page_checkbox1;

  /// No description provided for @co_alarms_quiz_page_checkbox2.
  ///
  /// In en, this message translates to:
  /// **'Carbon monoxide alarms are located on each level of the home'**
  String get co_alarms_quiz_page_checkbox2;

  /// No description provided for @co_alarms_quiz_page_checkbox3.
  ///
  /// In en, this message translates to:
  /// **'Carbon monoxide alarms are less than 7 years old'**
  String get co_alarms_quiz_page_checkbox3;

  /// No description provided for @co_alarms_quiz_page_checkbox4.
  ///
  /// In en, this message translates to:
  /// **'Install CO alarms in a central location outside sleeping area an on every level of the home'**
  String get co_alarms_quiz_page_checkbox4;

  /// No description provided for @co_alarms_quiz_page_checkbox5.
  ///
  /// In en, this message translates to:
  /// **'Install adaptive CO alarms for occupants with special needs'**
  String get co_alarms_quiz_page_checkbox5;

  /// No description provided for @electricity_appliances_quiz_page_title.
  ///
  /// In en, this message translates to:
  /// **'Electricity and Appliances'**
  String get electricity_appliances_quiz_page_title;

  /// No description provided for @electricity_appliances_quiz_page_checkbox1.
  ///
  /// In en, this message translates to:
  /// **'Do not overload electrical outlets; additional outlets should be installed by a qualified electrician'**
  String get electricity_appliances_quiz_page_checkbox1;

  /// No description provided for @electricity_appliances_quiz_page_checkbox2.
  ///
  /// In en, this message translates to:
  /// **'Inspect electrical cords for damage; electrical cords should never be frayed, cracked, pinned to the wall or placed under rugs'**
  String get electricity_appliances_quiz_page_checkbox2;

  /// No description provided for @electricity_appliances_quiz_page_checkbox3.
  ///
  /// In en, this message translates to:
  /// **'Maintain air space around electrical equipment (TV, DVD, etc.)'**
  String get electricity_appliances_quiz_page_checkbox3;

  /// No description provided for @electricity_appliances_quiz_page_checkbox4.
  ///
  /// In en, this message translates to:
  /// **'All plug outlets are safe and do not feel warm when you touch them'**
  String get electricity_appliances_quiz_page_checkbox4;

  /// No description provided for @electricity_appliances_quiz_page_checkbox5.
  ///
  /// In en, this message translates to:
  /// **'Large and small appliances are plugged directly into wall outlets'**
  String get electricity_appliances_quiz_page_checkbox5;

  /// No description provided for @electricity_appliances_quiz_page_checkbox6.
  ///
  /// In en, this message translates to:
  /// **'Purchase and use extension cords with the surge protector safety feature'**
  String get electricity_appliances_quiz_page_checkbox6;

  /// No description provided for @electricity_appliances_quiz_page_checkbox7.
  ///
  /// In en, this message translates to:
  /// **'Gas appliance vents are blocked by sheet metal'**
  String get electricity_appliances_quiz_page_checkbox7;

  /// No description provided for @electricity_appliances_quiz_page_checkbox8.
  ///
  /// In en, this message translates to:
  /// **'Kitchen and bathroom outlets that are near countertop surfaces within 6 feet of running water should have a Ground Fault Circuit Interrupter outlet'**
  String get electricity_appliances_quiz_page_checkbox8;

  /// No description provided for @electricity_appliances_quiz_page_checkbox9.
  ///
  /// In en, this message translates to:
  /// **'Light bulbs meet the recommended wattage of each fixture'**
  String get electricity_appliances_quiz_page_checkbox9;

  /// No description provided for @electricity_appliances_quiz_page_checkbox10.
  ///
  /// In en, this message translates to:
  /// **'Incandescent lights are not exposed, do not have a shade closer than 12 inches, and are at least 12 inches from combustibles'**
  String get electricity_appliances_quiz_page_checkbox10;

  /// No description provided for @electricity_appliances_quiz_page_checkbox11.
  ///
  /// In en, this message translates to:
  /// **'If there are young children in the home, install tamper-resistant outlets or outlet safety covers'**
  String get electricity_appliances_quiz_page_checkbox11;

  /// No description provided for @laundry_room_quiz_page_title.
  ///
  /// In en, this message translates to:
  /// **'Laundry Room'**
  String get laundry_room_quiz_page_title;

  /// No description provided for @laundry_room_quiz_page_checkbox1.
  ///
  /// In en, this message translates to:
  /// **'People clean the dryer of lint after every use'**
  String get laundry_room_quiz_page_checkbox1;

  /// No description provided for @laundry_room_quiz_page_checkbox2.
  ///
  /// In en, this message translates to:
  /// **'There is no lint build-up in the exhaust duct or behind the dryer'**
  String get laundry_room_quiz_page_checkbox2;

  /// No description provided for @laundry_room_quiz_page_checkbox3.
  ///
  /// In en, this message translates to:
  /// **'Foil or plastic accordion-type ducting material has been replaced with rigid or semi-rigid metal duct'**
  String get laundry_room_quiz_page_checkbox3;

  /// No description provided for @heating_equipment_quiz_page_title.
  ///
  /// In en, this message translates to:
  /// **'Heating Equipment'**
  String get heating_equipment_quiz_page_title;

  /// No description provided for @heating_equipment_quiz_page_checkbox1.
  ///
  /// In en, this message translates to:
  /// **'Do not use propane heaters inside the home or use the oven to heat the home'**
  String get heating_equipment_quiz_page_checkbox1;

  /// No description provided for @heating_equipment_quiz_page_checkbox2.
  ///
  /// In en, this message translates to:
  /// **'Replace furnace filters annually'**
  String get heating_equipment_quiz_page_checkbox2;

  /// No description provided for @heating_equipment_quiz_page_checkbox3.
  ///
  /// In en, this message translates to:
  /// **'“3 feet from the heat.” Furniture, curtains, dish towels, and anything that could catch fire are at least 3 feet from any type of heat source'**
  String get heating_equipment_quiz_page_checkbox3;

  /// No description provided for @heating_equipment_quiz_page_checkbox4.
  ///
  /// In en, this message translates to:
  /// **'Ensure space heaters are equipped with an automatic shut-off function'**
  String get heating_equipment_quiz_page_checkbox4;

  /// No description provided for @heating_equipment_quiz_page_checkbox5.
  ///
  /// In en, this message translates to:
  /// **'Areas around furnace, oil burner, wood stove, and other heat-generation equipment are clear of debris, combustible materials, and rags'**
  String get heating_equipment_quiz_page_checkbox5;

  /// No description provided for @living_rooms_and_bedrooms_quiz_page_title.
  ///
  /// In en, this message translates to:
  /// **'Living Rooms and Bedrooms'**
  String get living_rooms_and_bedrooms_quiz_page_title;

  /// No description provided for @living_rooms_and_bedrooms_quiz_page_checkbox1.
  ///
  /// In en, this message translates to:
  /// **'Closet lights have covers (not just a bare bulb)'**
  String get living_rooms_and_bedrooms_quiz_page_checkbox1;

  /// No description provided for @living_rooms_and_bedrooms_quiz_page_checkbox2.
  ///
  /// In en, this message translates to:
  /// **'Furniture meets updated recommendations for fire-resistant upholstery'**
  String get living_rooms_and_bedrooms_quiz_page_checkbox2;

  /// No description provided for @living_rooms_and_bedrooms_quiz_page_checkbox3.
  ///
  /// In en, this message translates to:
  /// **'Mattresses were made after 1973'**
  String get living_rooms_and_bedrooms_quiz_page_checkbox3;

  /// No description provided for @living_rooms_and_bedrooms_quiz_page_checkbox4.
  ///
  /// In en, this message translates to:
  /// **'Each bedroom has an escape ladder that all members of the family know how to use'**
  String get living_rooms_and_bedrooms_quiz_page_checkbox4;

  /// No description provided for @living_rooms_and_bedrooms_quiz_page_checkbox5.
  ///
  /// In en, this message translates to:
  /// **'Electric blankets are UL-approved, with cords in solid condition'**
  String get living_rooms_and_bedrooms_quiz_page_checkbox5;

  /// No description provided for @home_page_title.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_page_title;

  /// No description provided for @notifications_page_title.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications_page_title;

  /// No description provided for @settings_page_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_page_title;

  /// No description provided for @home_checklist_page_title.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_checklist_page_title;

  /// No description provided for @home_checklist_page_finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get home_checklist_page_finished;

  /// No description provided for @resources_page_title.
  ///
  /// In en, this message translates to:
  /// **'Resources'**
  String get resources_page_title;

  /// No description provided for @resources_page_link1.
  ///
  /// In en, this message translates to:
  /// **'National Fire Protection Association (NFPA)'**
  String get resources_page_link1;

  /// No description provided for @resources_page_link2.
  ///
  /// In en, this message translates to:
  /// **'Pacific Gas & Electric (PG&E)'**
  String get resources_page_link2;

  /// No description provided for @resources_page_link3.
  ///
  /// In en, this message translates to:
  /// **'Safe Kids'**
  String get resources_page_link3;

  /// No description provided for @resources_page_link4.
  ///
  /// In en, this message translates to:
  /// **'Santa Clara County Fire Department'**
  String get resources_page_link4;

  /// No description provided for @resources_page_link5.
  ///
  /// In en, this message translates to:
  /// **'Santa Clara County Fire Safe Council'**
  String get resources_page_link5;

  /// No description provided for @resources_page_link6.
  ///
  /// In en, this message translates to:
  /// **'Santa Clara County Fire Safe Council'**
  String get resources_page_link6;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
