import 'package:flutter/material.dart';
import 'package:playlist/core/core.dart';

import 'generated/l10n.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDarkTheme = false;

    return Scaffold(
      backgroundColor: context.color.white_grey900,
      appBar: AppBarComponent(title: S.of(context).settings),
      body: Column(
        children: [
          SizedBox(height: 24),
          SizedBox(
            height: 61,
            child: SwitchListTile(
              contentPadding:
                  const EdgeInsets.only(left: 16, right: 8, top: 0, bottom: 0),
              title: Text(
                S.of(context).darkTheme,
                style: context.textStyleColor(
                  context.textStyle.caption1!,
                  context.color.grey900_white!,
                ),
              ),
              value: isDarkTheme,
              // visualDensity: const VisualDensity(vertical: -4),
              // activeColor: context.color.teal350!,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 16, right: 14),
            title: Text(
              S.of(context).shareApp,
              style: context.textStyleColor(
                context.textStyle.caption1!,
                context.color.grey900_white!,
              ),
            ),
            trailing: ImageIcon(
              AssetImage("assets/icons/ic_share.png"),
              color: context.color.grey500_white!,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 16, right: 14),
            title: Text(
              S.of(context).writeToSupport,
              style: context.textStyleColor(
                context.textStyle.caption1!,
                context.color.grey900_white!,
              ),
            ),
            trailing: ImageIcon(
              AssetImage("assets/icons/ic_support.png"),
              color: context.color.grey500_white!,
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 16, right: 14),
            title: Text(
              S.of(context).userAgreement,
              style: context.textStyleColor(
                context.textStyle.caption1!,
                context.color.grey900_white!,
              ),
            ),
            trailing: ImageIcon(
              AssetImage("assets/icons/ic_chevron.png"),
              color: context.color.grey500_white!,
            ),
          ),
        ],
      ),
    );
  }
}
