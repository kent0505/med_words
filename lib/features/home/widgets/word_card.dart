import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_colors.dart';
import '../../word/bloc/word_bloc.dart';
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
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
          ),
        ],
      ),
      child: CupertinoButton(
        onPressed: () {
          context.push('/word', extra: word);
          context.read<WordBloc>().add(AddLastWordEvent(word: word));
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
            // const SizedBox(width: 16),
            // Expanded(
            //   child: Container(
            //     alignment: Alignment.centerRight,
            //     child: Text(
            //       word.uz,
            //       maxLines: 1,
            //       overflow: TextOverflow.ellipsis,
            //       style: const TextStyle(
            //         color: Colors.black,
            //         fontSize: 12,
            //         fontFamily: 'BarlowI',
            //       ),
            //     ),
            //   ),
            // ),
            // const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
