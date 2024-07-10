import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../word/bloc/word_bloc.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 13,
      ),
      decoration: BoxDecoration(
        color: AppColors.appBar,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        // textAlign: TextAlign.center,
        // keyboardType: TextInputType.number,
        // inputFormatters: const [
        // FilteringTextInputFormatter.digitsOnly,
        // LengthLimitingTextInputFormatter(4),
        // ],
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: 'Search by events, tasks.. ',
          hintStyle: const TextStyle(
            color: Color(0xff8E8E8E),
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Barlow',
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: SvgPicture.asset(
              'assets/search.svg',
              height: 19,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onChanged: (value) {
          context.read<WordBloc>().add(SearchWordEvent(text: value));
        },
      ),
    );
  }
}
