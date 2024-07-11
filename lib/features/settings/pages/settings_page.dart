import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../widgets/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: 'Settings',
          back: false,
        ),
        const SizedBox(height: 12),
        SettingsTile(
          title: 'About',
          asset: 'about',
          onPressed: () {
            context.push('/about');
          },
        ),
        const SizedBox(height: 8),
        SettingsTile(
          title: 'Terms & Conditions',
          asset: 'terms',
          onPressed: () {
            context.push('/terms');
          },
        ),
        const SizedBox(height: 8),
        SettingsTile(
          title: 'Privacy Policy',
          asset: 'privacy',
          onPressed: () {
            context.push('/privacy');
          },
        ),
        const SizedBox(height: 8),
        SettingsTile(
          title: 'Rate This App',
          asset: 'rate',
          onPressed: () {},
        ),
        const SizedBox(height: 8),
        SettingsTile(
          title: 'Share This App',
          asset: 'share',
          onPressed: () {},
        ),
      ],
    );
  }
}
