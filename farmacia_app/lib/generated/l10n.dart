// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `My Pharmacy`
  String get simpleText {
    return Intl.message(
      'My Pharmacy',
      name: 'simpleText',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get simpleText1 {
    return Intl.message(
      'Email',
      name: 'simpleText1',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get simpleText2 {
    return Intl.message(
      'Password',
      name: 'simpleText2',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get simpleText3 {
    return Intl.message(
      'Forgot your password?',
      name: 'simpleText3',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get simpleText4 {
    return Intl.message(
      'Register',
      name: 'simpleText4',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get simpleText5 {
    return Intl.message(
      'Create',
      name: 'simpleText5',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email, we will send you instructions to reset your password`
  String get simpleText6 {
    return Intl.message(
      'Enter your email, we will send you instructions to reset your password',
      name: 'simpleText6',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get simpleText7 {
    return Intl.message(
      'User',
      name: 'simpleText7',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get simpleText8 {
    return Intl.message(
      'Confirm Password',
      name: 'simpleText8',
      desc: '',
      args: [],
    );
  }

  /// `Do you already have an account?`
  String get simpleText9 {
    return Intl.message(
      'Do you already have an account?',
      name: 'simpleText9',
      desc: '',
      args: [],
    );
  }

  /// `Create Pharmacy`
  String get simpleText10 {
    return Intl.message(
      'Create Pharmacy',
      name: 'simpleText10',
      desc: '',
      args: [],
    );
  }

  /// `New Pharmacy`
  String get simpleText11 {
    return Intl.message(
      'New Pharmacy',
      name: 'simpleText11',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get simpleText12 {
    return Intl.message(
      'Location',
      name: 'simpleText12',
      desc: '',
      args: [],
    );
  }

  /// `Edit Pharmacy`
  String get simpleText13 {
    return Intl.message(
      'Edit Pharmacy',
      name: 'simpleText13',
      desc: '',
      args: [],
    );
  }

  /// `Edit Location`
  String get simpleText14 {
    return Intl.message(
      'Edit Location',
      name: 'simpleText14',
      desc: '',
      args: [],
    );
  }

  /// `Charts`
  String get simpleText15 {
    return Intl.message(
      'Charts',
      name: 'simpleText15',
      desc: '',
      args: [],
    );
  }

  /// `Clients during 2020`
  String get simpleText16 {
    return Intl.message(
      'Clients during 2020',
      name: 'simpleText16',
      desc: '',
      args: [],
    );
  }

  /// `Pharmacy Market Share 2020 (%)`
  String get simpleText17 {
    return Intl.message(
      'Pharmacy Market Share 2020 (%)',
      name: 'simpleText17',
      desc: '',
      args: [],
    );
  }

  /// `Sales in the first 5 years`
  String get simpleText18 {
    return Intl.message(
      'Sales in the first 5 years',
      name: 'simpleText18',
      desc: '',
      args: [],
    );
  }

  /// `Money Raised in 2020`
  String get simpleText19 {
    return Intl.message(
      'Money Raised in 2020',
      name: 'simpleText19',
      desc: '',
      args: [],
    );
  }

  /// `Most selled products`
  String get simpleText20 {
    return Intl.message(
      'Most selled products',
      name: 'simpleText20',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get button {
    return Intl.message(
      'Login',
      name: 'button',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get button1 {
    return Intl.message(
      'Send',
      name: 'button1',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es', countryCode: 'PE'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}