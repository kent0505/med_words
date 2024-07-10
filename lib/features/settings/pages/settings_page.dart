import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'Settings',
          back: false,
        ),
      ],
    );
  }
}
