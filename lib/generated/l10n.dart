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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Playlist`
  String get appName {
    return Intl.message('Playlist', name: 'appName', desc: '', args: []);
  }

  /// `Playlist maker`
  String get playlistMaker {
    return Intl.message(
      'Playlist maker',
      name: 'playlistMaker',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message('Поиск', name: 'search', desc: '', args: []);
  }

  /// `Медиатека`
  String get library {
    return Intl.message('Медиатека', name: 'library', desc: '', args: []);
  }

  /// `Настройки`
  String get settings {
    return Intl.message('Настройки', name: 'settings', desc: '', args: []);
  }

  /// `Темная тема`
  String get darkTheme {
    return Intl.message('Темная тема', name: 'darkTheme', desc: '', args: []);
  }

  /// `Поделиться приложением`
  String get shareApp {
    return Intl.message(
      'Поделиться приложением',
      name: 'shareApp',
      desc: '',
      args: [],
    );
  }

  /// `Написать в поддержку`
  String get writeToSupport {
    return Intl.message(
      'Написать в поддержку',
      name: 'writeToSupport',
      desc: '',
      args: [],
    );
  }

  /// `Пользовательское соглашение`
  String get userAgreement {
    return Intl.message(
      'Пользовательское соглашение',
      name: 'userAgreement',
      desc: '',
      args: [],
    );
  }

  /// `https://practicum.yandex.ru/android-developer`
  String get shareAppUrl {
    return Intl.message(
      'https://practicum.yandex.ru/android-developer',
      name: 'shareAppUrl',
      desc: '',
      args: [],
    );
  }

  /// `yumoshkin@mail.ru`
  String get supportEmail {
    return Intl.message(
      'yumoshkin@mail.ru',
      name: 'supportEmail',
      desc: '',
      args: [],
    );
  }

  /// `Сообщение разработчикам и разработчицам приложения Playlist Maker`
  String get supportSubject {
    return Intl.message(
      'Сообщение разработчикам и разработчицам приложения Playlist Maker',
      name: 'supportSubject',
      desc: '',
      args: [],
    );
  }

  /// `Спасибо разработчикам и разработчицам за крутое приложение!`
  String get supportText {
    return Intl.message(
      'Спасибо разработчикам и разработчицам за крутое приложение!',
      name: 'supportText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'en')];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
