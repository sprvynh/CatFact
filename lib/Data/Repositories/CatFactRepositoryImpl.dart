import '../../Core/Constant/Typedef.dart';
import '../../Data/DataSources/CatFactDataSource.dart';
import '../../Domain/Entities/CatFact.dart';
import '../../Domain/Repositories/CatFactRepository.dart';

class CatFactRepositoryImpl implements CatFactRepository {
  final CatFactDataSource _dataSource;

  const CatFactRepositoryImpl({required CatFactDataSource dataSource}) : _dataSource = dataSource;

  @override
  FutureResult<String, CatFact> getRandomFact() async => _dataSource.getRandomFact();
}
