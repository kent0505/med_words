import 'package:flutter/material.dart';

import '../models/word.dart';

class WordPage extends StatelessWidget {
  const WordPage({super.key, required this.word});

  final Word word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(word.en),
        ],
      ),
    );
  }
}
