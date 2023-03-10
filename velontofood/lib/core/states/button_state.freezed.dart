// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ButtonState {
  bool get enabled => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ButtonStateCopyWith<ButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonStateCopyWith<$Res> {
  factory $ButtonStateCopyWith(
          ButtonState value, $Res Function(ButtonState) then) =
      _$ButtonStateCopyWithImpl<$Res, ButtonState>;
  @useResult
  $Res call({bool enabled, bool error, bool loading, String? errorMessage});
}

/// @nodoc
class _$ButtonStateCopyWithImpl<$Res, $Val extends ButtonState>
    implements $ButtonStateCopyWith<$Res> {
  _$ButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? error = null,
    Object? loading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ButtonStateCopyWith<$Res>
    implements $ButtonStateCopyWith<$Res> {
  factory _$$_ButtonStateCopyWith(
          _$_ButtonState value, $Res Function(_$_ButtonState) then) =
      __$$_ButtonStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool enabled, bool error, bool loading, String? errorMessage});
}

/// @nodoc
class __$$_ButtonStateCopyWithImpl<$Res>
    extends _$ButtonStateCopyWithImpl<$Res, _$_ButtonState>
    implements _$$_ButtonStateCopyWith<$Res> {
  __$$_ButtonStateCopyWithImpl(
      _$_ButtonState _value, $Res Function(_$_ButtonState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
    Object? error = null,
    Object? loading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ButtonState(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ButtonState extends _ButtonState {
  const _$_ButtonState(
      {this.enabled = true,
      this.error = false,
      this.loading = false,
      this.errorMessage})
      : super._();

  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool loading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ButtonState(enabled: $enabled, error: $error, loading: $loading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ButtonState &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, enabled, error, loading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ButtonStateCopyWith<_$_ButtonState> get copyWith =>
      __$$_ButtonStateCopyWithImpl<_$_ButtonState>(this, _$identity);
}

abstract class _ButtonState extends ButtonState {
  const factory _ButtonState(
      {final bool enabled,
      final bool error,
      final bool loading,
      final String? errorMessage}) = _$_ButtonState;
  const _ButtonState._() : super._();

  @override
  bool get enabled;
  @override
  bool get error;
  @override
  bool get loading;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ButtonStateCopyWith<_$_ButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}
