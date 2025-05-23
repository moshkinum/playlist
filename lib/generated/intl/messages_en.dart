// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appName": MessageLookupByLibrary.simpleMessage("Playlist"),
    "darkTheme": MessageLookupByLibrary.simpleMessage("Темная тема"),
    "library": MessageLookupByLibrary.simpleMessage("Медиатека"),
    "playlistMaker": MessageLookupByLibrary.simpleMessage("Playlist maker"),
    "search": MessageLookupByLibrary.simpleMessage("Поиск"),
    "settings": MessageLookupByLibrary.simpleMessage("Настройки"),
    "shareApp": MessageLookupByLibrary.simpleMessage("Поделиться приложением"),
    "shareAppUrl": MessageLookupByLibrary.simpleMessage(
      "https://practicum.yandex.ru/android-developer",
    ),
    "supportEmail": MessageLookupByLibrary.simpleMessage("yumoshkin@mail.ru"),
    "supportSubject": MessageLookupByLibrary.simpleMessage(
      "Сообщение разработчикам и разработчицам приложения Playlist Maker",
    ),
    "supportText": MessageLookupByLibrary.simpleMessage(
      "Спасибо разработчикам и разработчицам за крутое приложение!",
    ),
    "userAgreement": MessageLookupByLibrary.simpleMessage(
      "Пользовательское соглашение",
    ),
    "writeToSupport": MessageLookupByLibrary.simpleMessage(
      "Написать в поддержку",
    ),
  };
}
