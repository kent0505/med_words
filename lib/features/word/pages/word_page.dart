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
            color: AppColors.appBar,
          ),
          CustomAppBar(
            title: word.en,
            word: word,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      word.en,
                      style: const TextStyle(
                        color: AppColors.main,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'BarlowI',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      word.transcript,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Doulos',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        word.enDef,
                        style: const TextStyle(
                          color: AppColors.main,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      word.uz,
                      style: const TextStyle(
                        color: AppColors.main,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'BarlowI',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        word.uzDef,
                        style: const TextStyle(
                          color: AppColors.main,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
