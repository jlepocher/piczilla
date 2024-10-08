// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageModel {
  List<ImageModel> get images => throw _privateConstructorUsedError;
  int? get nextPageNumberToFetch => throw _privateConstructorUsedError;

  /// Create a copy of HomePageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageModelCopyWith<HomePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageModelCopyWith<$Res> {
  factory $HomePageModelCopyWith(
          HomePageModel value, $Res Function(HomePageModel) then) =
      _$HomePageModelCopyWithImpl<$Res, HomePageModel>;
  @useResult
  $Res call({List<ImageModel> images, int? nextPageNumberToFetch});
}

/// @nodoc
class _$HomePageModelCopyWithImpl<$Res, $Val extends HomePageModel>
    implements $HomePageModelCopyWith<$Res> {
  _$HomePageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? nextPageNumberToFetch = freezed,
  }) {
    return _then(_value.copyWith(
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      nextPageNumberToFetch: freezed == nextPageNumberToFetch
          ? _value.nextPageNumberToFetch
          : nextPageNumberToFetch // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageModelImplCopyWith<$Res>
    implements $HomePageModelCopyWith<$Res> {
  factory _$$HomePageModelImplCopyWith(
          _$HomePageModelImpl value, $Res Function(_$HomePageModelImpl) then) =
      __$$HomePageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageModel> images, int? nextPageNumberToFetch});
}

/// @nodoc
class __$$HomePageModelImplCopyWithImpl<$Res>
    extends _$HomePageModelCopyWithImpl<$Res, _$HomePageModelImpl>
    implements _$$HomePageModelImplCopyWith<$Res> {
  __$$HomePageModelImplCopyWithImpl(
      _$HomePageModelImpl _value, $Res Function(_$HomePageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
    Object? nextPageNumberToFetch = freezed,
  }) {
    return _then(_$HomePageModelImpl(
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
      nextPageNumberToFetch: freezed == nextPageNumberToFetch
          ? _value.nextPageNumberToFetch
          : nextPageNumberToFetch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$HomePageModelImpl implements _HomePageModel {
  const _$HomePageModelImpl(
      {required final List<ImageModel> images,
      required this.nextPageNumberToFetch})
      : _images = images;

  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int? nextPageNumberToFetch;

  @override
  String toString() {
    return 'HomePageModel(images: $images, nextPageNumberToFetch: $nextPageNumberToFetch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageModelImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.nextPageNumberToFetch, nextPageNumberToFetch) ||
                other.nextPageNumberToFetch == nextPageNumberToFetch));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_images), nextPageNumberToFetch);

  /// Create a copy of HomePageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      __$$HomePageModelImplCopyWithImpl<_$HomePageModelImpl>(this, _$identity);
}

abstract class _HomePageModel implements HomePageModel {
  const factory _HomePageModel(
      {required final List<ImageModel> images,
      required final int? nextPageNumberToFetch}) = _$HomePageModelImpl;

  @override
  List<ImageModel> get images;
  @override
  int? get nextPageNumberToFetch;

  /// Create a copy of HomePageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageModelImplCopyWith<_$HomePageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
