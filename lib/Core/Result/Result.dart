abstract class Result<L, R> {
  dynamic get value;
}

class Left<L, R> implements Result<L, R> {
  final L _value;

  const Left(L value) : _value = value;

  @override
  L get value => _value;
}

class Right<L, R> implements Result<L, R> {
  final R _value;

  const Right(R value) : _value = value;

  @override
  R get value => _value;
}
