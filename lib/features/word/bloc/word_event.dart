part of 'word_bloc.dart';

abstract class WordEvent {}

class GetWordsEvent extends WordEvent {}

class AddFavoriteEvent extends WordEvent {
  final Word word;
  AddFavoriteEvent({required this.word});
}
