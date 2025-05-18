import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:playlist/main_screen.dart';
import 'package:playlist/theme/theme.dart';

import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme =
        AppTheme.themeData(themeType: 'light', fontSizeType: 'normal');
    final ThemeData darkTheme =
        AppTheme.themeData(themeType: 'dark', fontSizeType: 'normal');

    return MaterialApp(
      onGenerateTitle: (context) {
        return S.of(context).appName;
      },
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: theme,
      darkTheme: darkTheme,
      home: MainScreen(),
    );
  }
}
