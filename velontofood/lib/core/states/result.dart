import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:velontofood/core/error/failure.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success({required T data}) = Success<T>;

  const factory Result.error({required Failure error}) = Error<T>;
}
