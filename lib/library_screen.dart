import 'package:flutter/material.dart';
import 'package:playlist/core/core.dart';

import 'generated/l10n.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.white_grey900,
      appBar: AppBarComponent(title: S.of(context).library),
      body: Center(
        child: Text("Медиатека"),
      ),
    );
  }
}
