import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med_words/features/home/widgets/word_card.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../word/bloc/word_bloc.dart';
import '../../word/models/word.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: 'Favourites',
          back: false,
        ),
        BlocBuilder<WordBloc, WordState>(
          builder: (context, state) {
            if (state is WordsLoadedState) {
              return Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    for (Word word in state.words) ...[
                      if (word.favorite) WordCard(word: word)
                    ]
                  ],
                ),
              );
            }

            return Container();
          },
        )
      ],
    );
  }
}
