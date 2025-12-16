import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_detail_event.dart';
part 'home_detail_state.dart';

class HomeDetailBloc extends Bloc<HomeDetailEvent, HomeDetailState> {
  HomeDetailBloc() : super(HomeDetailInitial()) {
    on<HomeDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
