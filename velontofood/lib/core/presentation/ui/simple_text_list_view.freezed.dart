// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_text_list_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimpleListViewModel {
  List<String> get items => throw _privateConstructorUsedError;
  String? get selectedItem => throw _privateConstructorUsedError;
  dynamic Function(String)? get onSelected =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleListViewModelCopyWith<SimpleListViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleListViewModelCopyWith<$Res> {
  factory $SimpleListViewModelCopyWith(
          SimpleListViewModel value, $Res Function(SimpleListViewModel) then) =
      _$SimpleListViewModelCopyWithImpl<$Res, SimpleListViewModel>;
  @useResult
  $Res call(
      {List<String> items,
      String? selectedItem,
      dynamic Function(String)? onSelected});
}

/// @nodoc
class _$SimpleListViewModelCopyWithImpl<$Res, $Val extends SimpleListViewModel>
    implements $SimpleListViewModelCopyWith<$Res> {
  _$SimpleListViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? selectedItem = freezed,
    Object? onSelected = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as String?,
      onSelected: freezed == onSelected
          ? _value.onSelected
          : onSelected // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SimpleListViewModelCopyWith<$Res>
    implements $SimpleListViewModelCopyWith<$Res> {
  factory _$$_SimpleListViewModelCopyWith(_$_SimpleListViewModel value,
          $Res Function(_$_SimpleListViewModel) then) =
      __$$_SimpleListViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> items,
      String? selectedItem,
      dynamic Function(String)? onSelected});
}

/// @nodoc
class __$$_SimpleListViewModelCopyWithImpl<$Res>
    extends _$SimpleListViewModelCopyWithImpl<$Res, _$_SimpleListViewModel>
    implements _$$_SimpleListViewModelCopyWith<$Res> {
  __$$_SimpleListViewModelCopyWithImpl(_$_SimpleListViewModel _value,
      $Res Function(_$_SimpleListViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? selectedItem = freezed,
    Object? onSelected = freezed,
  }) {
    return _then(_$_SimpleListViewModel(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedItem: freezed == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as String?,
      onSelected: freezed == onSelected
          ? _value.onSelected
          : onSelected // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String)?,
    ));
  }
}

/// @nodoc

class _$_SimpleListViewModel implements _SimpleListViewModel {
  const _$_SimpleListViewModel(
      {required final List<String> items, this.selectedItem, this.onSelected})
      : _items = items;

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? selectedItem;
  @override
  final dynamic Function(String)? onSelected;

  @override
  String toString() {
    return 'SimpleListViewModel(items: $items, selectedItem: $selectedItem, onSelected: $onSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SimpleListViewModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            (identical(other.onSelected, onSelected) ||
                other.onSelected == onSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), selectedItem, onSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SimpleListViewModelCopyWith<_$_SimpleListViewModel> get copyWith =>
      __$$_SimpleListViewModelCopyWithImpl<_$_SimpleListViewModel>(
          this, _$identity);
}

abstract class _SimpleListViewModel implements SimpleListViewModel {
  const factory _SimpleListViewModel(
      {required final List<String> items,
      final String? selectedItem,
      final dynamic Function(String)? onSelected}) = _$_SimpleListViewModel;

  @override
  List<String> get items;
  @override
  String? get selectedItem;
  @override
  dynamic Function(String)? get onSelected;
  @override
  @JsonKey(ignore: true)
  _$$_SimpleListViewModelCopyWith<_$_SimpleListViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
