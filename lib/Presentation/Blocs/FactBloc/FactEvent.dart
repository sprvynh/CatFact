part of 'FactBloc.dart';

abstract class FactEvent extends Equatable {
  const FactEvent();

  @override
  List<Object> get props => [];
}

class GetRandomFactEvent extends FactEvent {}
