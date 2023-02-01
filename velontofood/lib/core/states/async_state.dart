
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velontofood/core/error/failure.dart';

part 'async_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {

  const factory ViewState.initial() = Initial<T>;

  const factory ViewState.loading() = Loading<T>;

  const factory ViewState.data({required T data}) = Data<T>;

  const factory ViewState.error({required Failure error}) =
  Error<T>;
}