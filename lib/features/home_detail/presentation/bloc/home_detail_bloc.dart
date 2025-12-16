import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_detail_event.dart';
part 'home_detail_state.dart';

int _counter = 0;

class HomeDetailBloc extends Bloc<HomeDetailEvent, HomeDetailState> {
  HomeDetailBloc() : super(HomeDetailInitial()) {
    on<IncrementEvent>((event, emit) {
      _counter++;
      emit(HomeDetailResultState(_counter));
    });
    on<DecrementEvent>((event, emit) {
      _counter--;
      emit(HomeDetailResultState(_counter));
    });
  }
}
