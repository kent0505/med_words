import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/word.dart';
import '../service/word_service.dart';

part 'word_event.dart';
part 'word_state.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  final _service = WordService();
  List<Word> _words = [];

  WordBloc() : super(WordInitial()) {
    on<GetWordsEvent>((event, emit) async {
      log('GetWordsEvent');
      _words = await _service.getWords();
      emit(WordsLoadedState(words: _words));
    });

    on<AddFavoriteEvent>((event, emit) async {
      for (Word word in _service.words) {
        if (word == event.word) {
          word.favorite = !word.favorite;
        }
      }
      _words = await _service.updateWords();
      emit(WordsLoadedState(words: _words));
    });

    on<SearchWordEvent>((event, emit) async {
      log('SearchWordEvent');
      List<Word> suggestionList = event.text.isEmpty
          ? _service.words
          : _service.words.where((item) {
              return item.en.toLowerCase().contains(event.text.toLowerCase()) ||
                  item.uz.toLowerCase().contains(event.text.toLowerCase());
            }).toList();
      emit(WordsLoadedState(words: suggestionList));
    });

    // on<GetLastWordsEvent>((event, emit) async {
    //   _lastwords = await _service.getLastWords();
    //   emit(LastWordsLoadedState(words: _lastwords));
    // });

    on<AddLastWordEvent>((event, emit) async {
      List<Word> newLastWords = [];
      if (_service.lastwords.length == 10) {
        _service.lastwords.removeLast();
      }
      for (Word word in _service.lastwords) {
        if (word == event.word) return;
      }
      newLastWords.add(event.word);
      for (Word word in _service.lastwords) {
        newLastWords.add(word);
      }
      _service.lastwords = newLastWords;
      await _service.updateLastWords();
    });

    on<ReloadWordsEvent>((event, emit) {
      log('ReloadWordsEvent');
      emit(WordsLoadedState(words: _words));
    });
  }
}
