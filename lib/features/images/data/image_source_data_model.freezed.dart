// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_source_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageSourceModel _$ImageSourceModelFromJson(Map<String, dynamic> json) {
  return _ImageSourceModel.fromJson(json);
}

/// @nodoc
mixin _$ImageSourceModel {
  String get original => throw _privateConstructorUsedError;
  String get large2x => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get small => throw _privateConstructorUsedError;
  String get portrait => throw _privateConstructorUsedError;
  String get landscape => throw _privateConstructorUsedError;
  String get tiny => throw _privateConstructorUsedError;

  /// Serializes this ImageSourceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageSourceModelCopyWith<ImageSourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSourceModelCopyWith<$Res> {
  factory $ImageSourceModelCopyWith(
          ImageSourceModel value, $Res Function(ImageSourceModel) then) =
      _$ImageSourceModelCopyWithImpl<$Res, ImageSourceModel>;
  @useResult
  $Res call(
      {String original,
      String large2x,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class _$ImageSourceModelCopyWithImpl<$Res, $Val extends ImageSourceModel>
    implements $ImageSourceModelCopyWith<$Res> {
  _$ImageSourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? landscape = null,
    Object? tiny = null,
  }) {
    return _then(_value.copyWith(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: null == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSourceModelImplCopyWith<$Res>
    implements $ImageSourceModelCopyWith<$Res> {
  factory _$$ImageSourceModelImplCopyWith(_$ImageSourceModelImpl value,
          $Res Function(_$ImageSourceModelImpl) then) =
      __$$ImageSourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String original,
      String large2x,
      String large,
      String medium,
      String small,
      String portrait,
      String landscape,
      String tiny});
}

/// @nodoc
class __$$ImageSourceModelImplCopyWithImpl<$Res>
    extends _$ImageSourceModelCopyWithImpl<$Res, _$ImageSourceModelImpl>
    implements _$$ImageSourceModelImplCopyWith<$Res> {
  __$$ImageSourceModelImplCopyWithImpl(_$ImageSourceModelImpl _value,
      $Res Function(_$ImageSourceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = null,
    Object? large2x = null,
    Object? large = null,
    Object? medium = null,
    Object? small = null,
    Object? portrait = null,
    Object? landscape = null,
    Object? tiny = null,
  }) {
    return _then(_$ImageSourceModelImpl(
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      large2x: null == large2x
          ? _value.large2x
          : large2x // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      small: null == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String,
      portrait: null == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String,
      landscape: null == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String,
      tiny: null == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageSourceModelImpl implements _ImageSourceModel {
  const _$ImageSourceModelImpl(
      {required this.original,
      required this.large2x,
      required this.large,
      required this.medium,
      required this.small,
      required this.portrait,
      required this.landscape,
      required this.tiny});

  factory _$ImageSourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageSourceModelImplFromJson(json);

  @override
  final String original;
  @override
  final String large2x;
  @override
  final String large;
  @override
  final String medium;
  @override
  final String small;
  @override
  final String portrait;
  @override
  final String landscape;
  @override
  final String tiny;

  @override
  String toString() {
    return 'ImageSourceModel(original: $original, large2x: $large2x, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSourceModelImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large2x, large2x) || other.large2x == large2x) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, large2x, large, medium,
      small, portrait, landscape, tiny);

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSourceModelImplCopyWith<_$ImageSourceModelImpl> get copyWith =>
      __$$ImageSourceModelImplCopyWithImpl<_$ImageSourceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageSourceModelImplToJson(
      this,
    );
  }
}

abstract class _ImageSourceModel implements ImageSourceModel {
  const factory _ImageSourceModel(
      {required final String original,
      required final String large2x,
      required final String large,
      required final String medium,
      required final String small,
      required final String portrait,
      required final String landscape,
      required final String tiny}) = _$ImageSourceModelImpl;

  factory _ImageSourceModel.fromJson(Map<String, dynamic> json) =
      _$ImageSourceModelImpl.fromJson;

  @override
  String get original;
  @override
  String get large2x;
  @override
  String get large;
  @override
  String get medium;
  @override
  String get small;
  @override
  String get portrait;
  @override
  String get landscape;
  @override
  String get tiny;

  /// Create a copy of ImageSourceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSourceModelImplCopyWith<_$ImageSourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
