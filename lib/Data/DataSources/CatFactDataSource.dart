import 'package:dio/dio.dart';

import '../../Core/Core.dart';
import '../Models/CatFactModel.dart';

abstract class CatFactDataSource {
  FutureResult<String, CatFactModel> getRandomFact();
}

class CatFactDataSourceImpl implements CatFactDataSource {
  final Dio _dio;

  const CatFactDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  FutureResult<String, CatFactModel> getRandomFact() async => await getFactFromUrl('fact');

  FutureResult<String, CatFactModel> getFactFromUrl(String url) async {
    try {
      Response response = await _dio.get(
        'https://catfact.ninja/$url',
        options: Options(responseType: ResponseType.json),
      );

      if (response.statusCode == 200) {
        CatFactModel model = CatFactModel.fromMap(response.data);

        return Right(model);
      } else {
        return Left(response.statusMessage.toString());
      }
    } catch (exception) {
      return Left(exception.toString());
    }
  }
}
