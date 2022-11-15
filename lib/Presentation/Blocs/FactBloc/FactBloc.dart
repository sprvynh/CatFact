import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Core/Core.dart';
import '../../../Domain/Entities/CatFact.dart';
import '../../../Domain/Usecases/GetRandomFact.dart';

part 'FactEvent.dart';
part 'FactState.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  final GetRandomFact _getRandomFact;

  FactBloc({required GetRandomFact getRandomFact})
      : _getRandomFact = getRandomFact,
        super(FactInitial()) {
    on<GetRandomFactEvent>(_onGetRandomFactEvent);
  }

  void _onGetRandomFactEvent(GetRandomFactEvent event, Emitter<FactState> emit) async {
    emit(FactLoading());
    Result getRandomFactResult = await _getRandomFact();

    emit(getRandomFactResult is Left ? FactError(getRandomFactResult.value) : FactLoaded(getRandomFactResult.value));
  }
}
