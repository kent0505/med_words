import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/widgets/custom_app_bar.dart';
import '../../word/models/word.dart';
import '../widgets/word_card.dart';

class RecentPage extends StatefulWidget {
  const RecentPage({super.key});

  @override
  State<RecentPage> createState() => _RecentPageState();
}

class _RecentPageState extends State<RecentPage> {
  List<Word> lastwords = [];

  Future<void> getLastWords() async {
    final box = await Hive.openBox('mywords');
    List words2 = box.get('lastwords') ?? [];
    setState(() {
      lastwords = words2.cast<Word>();
    });
    log(lastwords.length.toString());
  }

  @override
  void initState() {
    super.initState();
    getLastWords();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          title: 'History',
          back: false,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: lastwords.length,
            itemBuilder: (context, index) {
              return WordCard(word: lastwords[index]);
            },
          ),
        ),
        const SizedBox(height: 70),
      ],
    );
  }
}
