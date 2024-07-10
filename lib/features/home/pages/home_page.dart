import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/config/app_colors.dart';
import '../../settings/pages/settings_page.dart';
import '../../word/bloc/word_bloc.dart';
import '../bloc/home_bloc.dart';
import '../widgets/nav_bar.dart';
import '../widgets/search_field.dart';
import '../widgets/word_card.dart';
import 'favorites_page.dart';
import 'recent_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).viewPadding.top,
            color: AppColors.main,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top,
            ),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeFavorite) return const FavoritesPage();

                if (state is HomeRecent) return const RecentPage();

                if (state is HomeSettings) return const SettingsPage();

                return const _Home();
              },
            ),
          ),
          const NavBar(),
        ],
      ),
    );
  }
}

class _Home extends StatefulWidget {
  const _Home();

  @override
  State<_Home> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<WordBloc>().add(GetWordsEvent());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchField(controller: controller),
        BlocBuilder<WordBloc, WordState>(
          builder: (context, state) {
            if (state is WordsLoadedState) {
              return Expanded(
                child: RawScrollbar(
                  padding: const EdgeInsets.only(right: 8),
                  thumbColor: AppColors.main,
                  radius: const Radius.circular(12),
                  thumbVisibility: true,
                  thickness: 8,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: state.words.length,
                    itemBuilder: (context, index) {
                      return WordCard(word: state.words[index]);
                    },
                  ),
                ),
              );
            }

            return Container();
          },
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}
