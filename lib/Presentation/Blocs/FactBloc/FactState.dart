part of 'FactBloc.dart';

abstract class FactState extends Equatable {
  const FactState();

  @override
  List<Object> get props => [];
}

class FactInitial extends FactState {}

class FactLoading extends FactState {}

class FactError extends FactState {
  final String message;

  const FactError(this.message);

  @override
  List<Object> get props => [message];
}

class FactLoaded extends FactState {
  final CatFact fact;

  const FactLoaded(this.fact);

  @override
  List<Object> get props => [fact];
}
