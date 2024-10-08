// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get photographer => throw _privateConstructorUsedError;
  String? get photographerUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get shareableUrl => throw _privateConstructorUsedError;

  /// Create a copy of ImageDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDetailsModelCopyWith<ImageDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailsModelCopyWith<$Res> {
  factory $ImageDetailsModelCopyWith(
          ImageDetailsModel value, $Res Function(ImageDetailsModel) then) =
      _$ImageDetailsModelCopyWithImpl<$Res, ImageDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String url,
      String? photographer,
      String? photographerUrl,
      String? description,
      String shareableUrl});
}

/// @nodoc
class _$ImageDetailsModelCopyWithImpl<$Res, $Val extends ImageDetailsModel>
    implements $ImageDetailsModelCopyWith<$Res> {
  _$ImageDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? description = freezed,
    Object? shareableUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: freezed == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shareableUrl: null == shareableUrl
          ? _value.shareableUrl
          : shareableUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDetailsModelImplCopyWith<$Res>
    implements $ImageDetailsModelCopyWith<$Res> {
  factory _$$ImageDetailsModelImplCopyWith(_$ImageDetailsModelImpl value,
          $Res Function(_$ImageDetailsModelImpl) then) =
      __$$ImageDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String url,
      String? photographer,
      String? photographerUrl,
      String? description,
      String shareableUrl});
}

/// @nodoc
class __$$ImageDetailsModelImplCopyWithImpl<$Res>
    extends _$ImageDetailsModelCopyWithImpl<$Res, _$ImageDetailsModelImpl>
    implements _$$ImageDetailsModelImplCopyWith<$Res> {
  __$$ImageDetailsModelImplCopyWithImpl(_$ImageDetailsModelImpl _value,
      $Res Function(_$ImageDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? description = freezed,
    Object? shareableUrl = null,
  }) {
    return _then(_$ImageDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: freezed == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shareableUrl: null == shareableUrl
          ? _value.shareableUrl
          : shareableUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageDetailsModelImpl implements _ImageDetailsModel {
  const _$ImageDetailsModelImpl(
      {required this.id,
      required this.url,
      required this.photographer,
      required this.photographerUrl,
      required this.description,
      required this.shareableUrl});

  @override
  final int id;
  @override
  final String url;
  @override
  final String? photographer;
  @override
  final String? photographerUrl;
  @override
  final String? description;
  @override
  final String shareableUrl;

  @override
  String toString() {
    return 'ImageDetailsModel(id: $id, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, description: $description, shareableUrl: $shareableUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shareableUrl, shareableUrl) ||
                other.shareableUrl == shareableUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, url, photographer,
      photographerUrl, description, shareableUrl);

  /// Create a copy of ImageDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDetailsModelImplCopyWith<_$ImageDetailsModelImpl> get copyWith =>
      __$$ImageDetailsModelImplCopyWithImpl<_$ImageDetailsModelImpl>(
          this, _$identity);
}

abstract class _ImageDetailsModel implements ImageDetailsModel {
  const factory _ImageDetailsModel(
      {required final int id,
      required final String url,
      required final String? photographer,
      required final String? photographerUrl,
      required final String? description,
      required final String shareableUrl}) = _$ImageDetailsModelImpl;

  @override
  int get id;
  @override
  String get url;
  @override
  String? get photographer;
  @override
  String? get photographerUrl;
  @override
  String? get description;
  @override
  String get shareableUrl;

  /// Create a copy of ImageDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDetailsModelImplCopyWith<_$ImageDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
