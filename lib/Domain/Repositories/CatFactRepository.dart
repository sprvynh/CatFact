import '../../Core/Constant/Typedef.dart';
import '../Entities/CatFact.dart';

abstract class CatFactRepository {
  FutureResult<String, CatFact> getRandomFact();
}
