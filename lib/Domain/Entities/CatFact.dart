import 'package:equatable/equatable.dart';

class CatFact extends Equatable {
  final String fact;
  final int length;

  const CatFact({
    required this.fact,
    required this.length,
  });

  @override
  List<Object> get props => [fact, length];
}
