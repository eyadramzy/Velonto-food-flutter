


import 'package:velontofood/core/error/failure.dart';
import 'package:velontofood/core/states/result.dart';

class InputConverter {
  Result<int> stringToInt(String str) {
    int? val = int.tryParse(str);
    if (val == null) return const Result.error(error: InvalidInputFailure());
    return Result.success(data: val);
  }
}
