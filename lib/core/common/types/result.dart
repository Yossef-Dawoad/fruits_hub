import 'package:fruits_hub/core/common/types/errors.dart';

sealed class Result<T> {
  final T? data;
  final Failure? err;

  const Result(this.data, this.err);
}

final class Right<T> extends Result<T> {
  const Right(T? data) : super(data, null);
}

final class Left<T> extends Result<T> {
  const Left(Failure? err) : super(null, err);
}

typedef FutureResult<T> = Future<Result<T>>;
