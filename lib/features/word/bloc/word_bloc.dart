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
  }
}
