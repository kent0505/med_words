import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_words/features/home/widgets/word_card.dart';
import 'package:med_words/features/word/models/word.dart';

import '../../../core/config/app_colors.dart';
import '../../settings/pages/settings_page.dart';
import '../bloc/home_bloc.dart';
import '../widgets/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeSettings) return const SettingsPage();

                if (state is HomeFavorite) return const Text('HomeFavorite');

                return const _Home();
              },
            ),
            const NavBar(),
          ],
        ),
      ),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 44,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 13,
          ),
          decoration: BoxDecoration(
            color: AppColors.appBar,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: words.length,
            itemBuilder: (context, index) {
              return WordCard(word: words[index]);
            },
          ),
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}
