import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_colors.dart';
import '../../word/models/word.dart';

class WordCard extends StatelessWidget {
  const WordCard({super.key, required this.word});

  final Word word;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.25),
          ),
          const BoxShadow(
            color: Color(0xffF5F5F5),
            spreadRadius: -12,
            blurRadius: 12,
          ),
        ],
      ),
      child: CupertinoButton(
        onPressed: () {
          context.push('/word', extra: word);
        },
        padding: EdgeInsets.zero,
        child: Row(
          children: [
            const SizedBox(width: 16),
            Text(
              word.en,
              style: const TextStyle(
                color: AppColors.main,
                fontSize: 18,
                fontFamily: 'BarlowI',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
