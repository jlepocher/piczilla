// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageDataModel _$ImageDataModelFromJson(Map<String, dynamic> json) {
  return _ImageDataModel.fromJson(json);
}

/// @nodoc
mixin _$ImageDataModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get photographer => throw _privateConstructorUsedError;
  String? get photographerUrl => throw _privateConstructorUsedError;
  ImageSourceModel get src => throw _privateConstructorUsedError;
  String? get alt => throw _privateConstructorUsedError;

  /// Serializes this ImageDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageDataModelCopyWith<ImageDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataModelCopyWith<$Res> {
  factory $ImageDataModelCopyWith(
          ImageDataModel value, $Res Function(ImageDataModel) then) =
      _$ImageDataModelCopyWithImpl<$Res, ImageDataModel>;
  @useResult
  $Res call(
      {int id,
      String url,
      String? photographer,
      String? photographerUrl,
      ImageSourceModel src,
      String? alt});

  $ImageSourceModelCopyWith<$Res> get src;
}

/// @nodoc
class _$ImageDataModelCopyWithImpl<$Res, $Val extends ImageDataModel>
    implements $ImageDataModelCopyWith<$Res> {
  _$ImageDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? src = null,
    Object? alt = freezed,
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
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as ImageSourceModel,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ImageDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageSourceModelCopyWith<$Res> get src {
    return $ImageSourceModelCopyWith<$Res>(_value.src, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageDataModelImplCopyWith<$Res>
    implements $ImageDataModelCopyWith<$Res> {
  factory _$$ImageDataModelImplCopyWith(_$ImageDataModelImpl value,
          $Res Function(_$ImageDataModelImpl) then) =
      __$$ImageDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String url,
      String? photographer,
      String? photographerUrl,
      ImageSourceModel src,
      String? alt});

  @override
  $ImageSourceModelCopyWith<$Res> get src;
}

/// @nodoc
class __$$ImageDataModelImplCopyWithImpl<$Res>
    extends _$ImageDataModelCopyWithImpl<$Res, _$ImageDataModelImpl>
    implements _$$ImageDataModelImplCopyWith<$Res> {
  __$$ImageDataModelImplCopyWithImpl(
      _$ImageDataModelImpl _value, $Res Function(_$ImageDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? src = null,
    Object? alt = freezed,
  }) {
    return _then(_$ImageDataModelImpl(
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
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as ImageSourceModel,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataModelImpl implements _ImageDataModel {
  const _$ImageDataModelImpl(
      {required this.id,
      required this.url,
      required this.photographer,
      required this.photographerUrl,
      required this.src,
      required this.alt});

  factory _$ImageDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String? photographer;
  @override
  final String? photographerUrl;
  @override
  final ImageSourceModel src;
  @override
  final String? alt;

  @override
  String toString() {
    return 'ImageDataModel(id: $id, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, src: $src, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, url, photographer, photographerUrl, src, alt);

  /// Create a copy of ImageDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataModelImplCopyWith<_$ImageDataModelImpl> get copyWith =>
      __$$ImageDataModelImplCopyWithImpl<_$ImageDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataModelImplToJson(
      this,
    );
  }
}

abstract class _ImageDataModel implements ImageDataModel {
  const factory _ImageDataModel(
      {required final int id,
      required final String url,
      required final String? photographer,
      required final String? photographerUrl,
      required final ImageSourceModel src,
      required final String? alt}) = _$ImageDataModelImpl;

  factory _ImageDataModel.fromJson(Map<String, dynamic> json) =
      _$ImageDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String? get photographer;
  @override
  String? get photographerUrl;
  @override
  ImageSourceModel get src;
  @override
  String? get alt;

  /// Create a copy of ImageDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDataModelImplCopyWith<_$ImageDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
