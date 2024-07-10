part of 'word_bloc.dart';

abstract class WordEvent {}

class GetWordsEvent extends WordEvent {}

class AddFavoriteEvent extends WordEvent {
  final Word word;
  AddFavoriteEvent({required this.word});
}

class SearchWordEvent extends WordEvent {
  final String text;
  SearchWordEvent({required this.text});
}

class GetLastWordsEvent extends WordEvent {}

class AddLastWordEvent extends WordEvent {
  final Word word;
  AddLastWordEvent({required this.word});
}
