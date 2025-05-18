import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:playlist/core/core.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: context.textStyleColor(
          context.textStyle.title1!,
          context.color.grey900_white!,
        ),
      ),
      toolbarHeight: 56,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: context.color.white_grey900,
        // statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: context.color.white_grey900,
      iconTheme: IconThemeData(color: context.color.black_white),
      titleSpacing: 8,
    );
  }
}
