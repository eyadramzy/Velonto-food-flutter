import 'package:velontofood/core/error/exceptions.dart';
import 'package:velontofood/core/error/failure.dart';
import 'package:velontofood/core/states/result.dart';

class CacheableData<T, V> {
  Future<Result<T>> get(
      {required connected,
      required Function() onGetRemote,
      required Function() onGetLocal,
      required Function(V data) onSaveLocal}) async {
    if (connected) {
      try {
        final V data = await onGetRemote();
        onSaveLocal(data);
        return Result.success(data: data as T);
      } on ServerException {
        return const Result.error(error: ServerFailure());
      }
    } else {
      try {
        final T localData = await onGetLocal();
        return Result.success(data: localData);
      } on CacheException {
        return const Result.error(error: CacheFailure());
      }
    }
  }
}
