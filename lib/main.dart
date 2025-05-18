import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';

import 'app.dart';

void main() async {
  Intl.systemLocale = await findSystemLocale();
  runApp(const MyApp());
}
