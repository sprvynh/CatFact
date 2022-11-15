import '../../Core/Constant/Typedef.dart';
import '../Entities/CatFact.dart';
import '../Repositories/CatFactRepository.dart';

class GetRandomFact {
  final CatFactRepository _repository;

  const GetRandomFact({required CatFactRepository repository}) : _repository = repository;

  FutureResult<String, CatFact> call() async => _repository.getRandomFact();
}
