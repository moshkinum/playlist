import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playlist/core/core.dart';

import 'generated/l10n.dart';
import 'library_screen.dart';
import 'search_screen.dart';
import 'settings_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.blue600_grey900,
      appBar: AppBar(
        title: Text(
          S.of(context).playlistMaker,
          style: context.textStyleColor(
            context.textStyle.title1!,
            context.color.white!,
          ),
        ),
        toolbarHeight: 56,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: context.color.blue600_grey900,
        ),
        backgroundColor: context.color.blue600_grey900,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 24, bottom: 12, left: 16, right: 16),
        child: Column(
          children: [
            ButtonLargeComponent(
              label: S.of(context).search,
              icon: ImageIcon(
                const AssetImage("assets/icons/ic_search.png"),
                color: context.color.grey900,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SearchScreen();
                }));
              },
            ),
            ButtonLargeComponent(
              label: S.of(context).library,
              icon: ImageIcon(
                const AssetImage("assets/icons/ic_library.png"),
                color: context.color.grey900,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LibraryScreen();
                }));
              },
            ),
            ButtonLargeComponent(
              label: S.of(context).settings,
              icon: ImageIcon(
                const AssetImage("assets/icons/ic_settings.png"),
                color: context.color.grey900,
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SettingsScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
