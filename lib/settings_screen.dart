import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:playlist/core/core.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  context.textStyle.body1!,
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
                context.textStyle.body1!,
                context.color.grey900_white!,
              ),
            ),
            trailing: ImageIcon(
              AssetImage("assets/icons/ic_share.png"),
              color: context.color.grey500_white!,
            ),
            onTap: () {
              final params =
                  ShareParams(uri: Uri.parse(S.of(context).shareAppUrl));
              SharePlus.instance.share(params);
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 16, right: 14),
            title: Text(
              S.of(context).writeToSupport,
              style: context.textStyleColor(
                context.textStyle.body1!,
                context.color.grey900_white!,
              ),
            ),
            trailing: ImageIcon(
              AssetImage("assets/icons/ic_support.png"),
              color: context.color.grey500_white!,
            ),
            onTap: () async {
              final Email email = Email(
                subject: S.of(context).supportSubject,
                recipients: [S.of(context).supportEmail],
                body: S.of(context).supportText,
              );
              await FlutterEmailSender.send(email);
            },
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 16, right: 14),
            title: Text(
              S.of(context).userAgreement,
              style: context.textStyleColor(
                context.textStyle.body1!,
                context.color.grey900_white!,
              ),
            ),
            trailing: ImageIcon(
              AssetImage("assets/icons/ic_chevron.png"),
              color: context.color.grey500_white!,
            ),
            onTap: () {
              launchUrl(
                Uri.parse("https://yandex.ru/legal/practicum_offer"),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
        ],
      ),
    );
  }
}
