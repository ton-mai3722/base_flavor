import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'playback_screen_event.dart';
part 'playback_screen_state.dart';

class PlaybackScreenBloc extends Bloc<PlaybackScreenEvent, PlaybackScreenState> {
  PlaybackScreenBloc() : super(PlaybackScreenInitial()) {
    on<PlaybackScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
