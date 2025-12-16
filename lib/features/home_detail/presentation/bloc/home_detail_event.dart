part of 'home_detail_bloc.dart';

abstract class HomeDetailEvent extends Equatable {
  const HomeDetailEvent();

  @override
  List<Object> get props => [];
}

class IncrementEvent extends HomeDetailEvent {}

class DecrementEvent extends HomeDetailEvent {}
