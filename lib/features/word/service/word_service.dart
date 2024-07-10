import 'package:hive_flutter/hive_flutter.dart';

import '../models/word.dart';

class WordService {
  List<Word> words = [];

  Future<List<Word>> getWords() async {
    final box = await Hive.openBox('mywords');
    List words2 = box.get('words') ?? wordsList;
    words = words2.cast<Word>();
    return words;
  }

  Future<List<Word>> updateWords() async {
    final box = await Hive.openBox('mywords');
    box.put('words', words);
    words = await box.get('words');
    return words;
  }
}
