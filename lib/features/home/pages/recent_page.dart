import 'package:flutter/material.dart';

import '../../../core/widgets/custom_app_bar.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          title: 'History',
          back: false,
        ),
      ],
    );
  }
}
