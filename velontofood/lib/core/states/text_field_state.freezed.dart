// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextFieldState {
  String get value => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  TextEditingController get controller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextFieldStateCopyWith<TextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldStateCopyWith<$Res> {
  factory $TextFieldStateCopyWith(
          TextFieldState value, $Res Function(TextFieldState) then) =
      _$TextFieldStateCopyWithImpl<$Res, TextFieldState>;
  @useResult
  $Res call(
      {String value,
      bool enabled,
      String? errorMessage,
      TextEditingController controller});
}

/// @nodoc
class _$TextFieldStateCopyWithImpl<$Res, $Val extends TextFieldState>
    implements $TextFieldStateCopyWith<$Res> {
  _$TextFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? enabled = null,
    Object? errorMessage = freezed,
    Object? controller = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextFieldStateCopyWith<$Res>
    implements $TextFieldStateCopyWith<$Res> {
  factory _$$_TextFieldStateCopyWith(
          _$_TextFieldState value, $Res Function(_$_TextFieldState) then) =
      __$$_TextFieldStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value,
      bool enabled,
      String? errorMessage,
      TextEditingController controller});
}

/// @nodoc
class __$$_TextFieldStateCopyWithImpl<$Res>
    extends _$TextFieldStateCopyWithImpl<$Res, _$_TextFieldState>
    implements _$$_TextFieldStateCopyWith<$Res> {
  __$$_TextFieldStateCopyWithImpl(
      _$_TextFieldState _value, $Res Function(_$_TextFieldState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? enabled = null,
    Object? errorMessage = freezed,
    Object? controller = null,
  }) {
    return _then(_$_TextFieldState(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_TextFieldState extends _TextFieldState {
  const _$_TextFieldState(
      {this.value = '',
      this.enabled = true,
      this.errorMessage,
      required this.controller})
      : super._();

  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final bool enabled;
  @override
  final String? errorMessage;
  @override
  final TextEditingController controller;

  @override
  String toString() {
    return 'TextFieldState(value: $value, enabled: $enabled, errorMessage: $errorMessage, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextFieldState &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, value, enabled, errorMessage, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextFieldStateCopyWith<_$_TextFieldState> get copyWith =>
      __$$_TextFieldStateCopyWithImpl<_$_TextFieldState>(this, _$identity);
}

abstract class _TextFieldState extends TextFieldState {
  const factory _TextFieldState(
      {final String value,
      final bool enabled,
      final String? errorMessage,
      required final TextEditingController controller}) = _$_TextFieldState;
  const _TextFieldState._() : super._();

  @override
  String get value;
  @override
  bool get enabled;
  @override
  String? get errorMessage;
  @override
  TextEditingController get controller;
  @override
  @JsonKey(ignore: true)
  _$$_TextFieldStateCopyWith<_$_TextFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}
