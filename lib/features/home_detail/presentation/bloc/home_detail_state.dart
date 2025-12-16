part of 'home_detail_bloc.dart';

abstract class HomeDetailState extends Equatable {
  const HomeDetailState();

  @override
  List<Object> get props => [];
}

class HomeDetailInitial extends HomeDetailState {}

class HomeDetailResultState extends HomeDetailState {
  final int counter;

  const HomeDetailResultState(this.counter);

  @override
  List<Object> get props => [counter];
}
