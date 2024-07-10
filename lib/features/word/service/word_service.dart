import 'package:hive_flutter/hive_flutter.dart';

import '../models/word.dart';

class WordService {
  List<Word> words = [];
  List<Word> lastwords = [];

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

  // Future<List<Word>> getLastWords() async {
  //   final box = await Hive.openBox('mywords');
  //   List words2 = box.get('lastwords') ?? [];
  //   lastwords = words2.cast<Word>();
  //   return lastwords;
  // }

  Future<List<Word>> updateLastWords() async {
    final box = await Hive.openBox('mywords');
    box.put('lastwords', lastwords);
    lastwords = await box.get('lastwords');
    return lastwords;
  }
}
