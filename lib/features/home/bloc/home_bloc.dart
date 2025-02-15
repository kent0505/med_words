import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ChangePageEvent>((event, emit) {
      if (event.index == 0) {
        if (state is HomeInitial) return;
        emit(HomeInitial());
      } else if (event.index == 1) {
        if (state is HomeFavorite) return;
        emit(HomeFavorite());
      } else if (event.index == 2) {
        if (state is HomeRecent) return;
        emit(HomeRecent());
      } else {
        if (state is HomeSettings) return;
        emit(HomeSettings());
      }
    });
  }
}
