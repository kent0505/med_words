import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

import '../../features/word/bloc/word_bloc.dart';
import '../../features/word/models/word.dart';
import '../config/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.word,
    this.back = true,
  });

  final String title;
  final bool back;
  final Word? word;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: AppColors.appBar,
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: back
                ? CupertinoButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppColors.white,
                    ),
                  )
                : null,
          ),
          Expanded(
            child: Center(
              child: Text(
                word != null ? '' : title,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Barlow',
                ),
              ),
            ),
          ),
          // const Spacer(),
          word != null
              ? CupertinoButton(
                  onPressed: () {
                    Share.share(word!.en);
                  },
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                )
              : Container(),
          BlocBuilder<WordBloc, WordState>(
            builder: (context, state) {
              return SizedBox(
                width: 50,
                child: word != null
                    ? CupertinoButton(
                        onPressed: () {
                          context
                              .read<WordBloc>()
                              .add(AddFavoriteEvent(word: word!));
                        },
                        padding: EdgeInsets.zero,
                        child: Icon(
                          word!.favorite
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: AppColors.white,
                        ),
                      )
                    : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
