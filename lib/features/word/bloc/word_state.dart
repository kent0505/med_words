part of 'word_bloc.dart';

abstract class WordState {}

class WordInitial extends WordState {}

class WordsLoadedState extends WordState {
  final List<Word> words;
  WordsLoadedState({required this.words});
}
