import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/custom_app_bar.dart';
import '../models/word.dart';

class WordPage extends StatelessWidget {
  const WordPage({super.key, required this.word});

  final Word word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).viewPadding.top,
            color: AppColors.main,
          ),
          CustomAppBar(
            title: word.en,
            word: word,
          ),
        ],
      ),
    );
  }
}
