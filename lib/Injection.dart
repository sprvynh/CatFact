import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'Data/DataSources/CatFactDataSource.dart';
import 'Data/Repositories/CatFactRepositoryImpl.dart';
import 'Domain/Usecases/GetRandomFact.dart';
import 'Presentation/Blocs/Blocs.dart';

final GetIt get = GetIt.instance;

Future<void> configureDependencies() async {
  // Libs
  get.registerLazySingleton<Dio>(() => Dio());

  // DataSources
  get.registerLazySingleton<CatFactDataSourceImpl>(() => CatFactDataSourceImpl(dio: get.get<Dio>()));

  // Repositories
  get.registerLazySingleton<CatFactRepositoryImpl>(() => CatFactRepositoryImpl(dataSource: get.get<CatFactDataSourceImpl>()));

  // Usecases
  get.registerLazySingleton<GetRandomFact>(() => GetRandomFact(repository: get.get<CatFactRepositoryImpl>()));

  // Blocs
  get.registerLazySingleton(() => FactBloc(getRandomFact: get.get<GetRandomFact>()));
}
