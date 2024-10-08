// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_details_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageDetailsPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int imageId, String imageUrl,
            String? photographer, String? description, String shareableUrl)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int imageId, String imageUrl, String? photographer,
            String? description, String shareableUrl)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int imageId, String imageUrl, String? photographer,
            String? description, String shareableUrl)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageDetailsPageLoading value) loading,
    required TResult Function(ImageDetailsPageLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageDetailsPageLoading value)? loading,
    TResult? Function(ImageDetailsPageLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageDetailsPageLoading value)? loading,
    TResult Function(ImageDetailsPageLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailsPageStateCopyWith<$Res> {
  factory $ImageDetailsPageStateCopyWith(ImageDetailsPageState value,
          $Res Function(ImageDetailsPageState) then) =
      _$ImageDetailsPageStateCopyWithImpl<$Res, ImageDetailsPageState>;
}

/// @nodoc
class _$ImageDetailsPageStateCopyWithImpl<$Res,
        $Val extends ImageDetailsPageState>
    implements $ImageDetailsPageStateCopyWith<$Res> {
  _$ImageDetailsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageDetailsPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ImageDetailsPageLoadingImplCopyWith<$Res> {
  factory _$$ImageDetailsPageLoadingImplCopyWith(
          _$ImageDetailsPageLoadingImpl value,
          $Res Function(_$ImageDetailsPageLoadingImpl) then) =
      __$$ImageDetailsPageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ImageDetailsPageLoadingImplCopyWithImpl<$Res>
    extends _$ImageDetailsPageStateCopyWithImpl<$Res,
        _$ImageDetailsPageLoadingImpl>
    implements _$$ImageDetailsPageLoadingImplCopyWith<$Res> {
  __$$ImageDetailsPageLoadingImplCopyWithImpl(
      _$ImageDetailsPageLoadingImpl _value,
      $Res Function(_$ImageDetailsPageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailsPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ImageDetailsPageLoadingImpl implements ImageDetailsPageLoading {
  const _$ImageDetailsPageLoadingImpl();

  @override
  String toString() {
    return 'ImageDetailsPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDetailsPageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int imageId, String imageUrl,
            String? photographer, String? description, String shareableUrl)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int imageId, String imageUrl, String? photographer,
            String? description, String shareableUrl)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int imageId, String imageUrl, String? photographer,
            String? description, String shareableUrl)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageDetailsPageLoading value) loading,
    required TResult Function(ImageDetailsPageLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageDetailsPageLoading value)? loading,
    TResult? Function(ImageDetailsPageLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageDetailsPageLoading value)? loading,
    TResult Function(ImageDetailsPageLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ImageDetailsPageLoading implements ImageDetailsPageState {
  const factory ImageDetailsPageLoading() = _$ImageDetailsPageLoadingImpl;
}

/// @nodoc
abstract class _$$ImageDetailsPageLoadedImplCopyWith<$Res> {
  factory _$$ImageDetailsPageLoadedImplCopyWith(
          _$ImageDetailsPageLoadedImpl value,
          $Res Function(_$ImageDetailsPageLoadedImpl) then) =
      __$$ImageDetailsPageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int imageId,
      String imageUrl,
      String? photographer,
      String? description,
      String shareableUrl});
}

/// @nodoc
class __$$ImageDetailsPageLoadedImplCopyWithImpl<$Res>
    extends _$ImageDetailsPageStateCopyWithImpl<$Res,
        _$ImageDetailsPageLoadedImpl>
    implements _$$ImageDetailsPageLoadedImplCopyWith<$Res> {
  __$$ImageDetailsPageLoadedImplCopyWithImpl(
      _$ImageDetailsPageLoadedImpl _value,
      $Res Function(_$ImageDetailsPageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageDetailsPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? imageUrl = null,
    Object? photographer = freezed,
    Object? description = freezed,
    Object? shareableUrl = null,
  }) {
    return _then(_$ImageDetailsPageLoadedImpl(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
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

class _$ImageDetailsPageLoadedImpl implements ImageDetailsPageLoaded {
  const _$ImageDetailsPageLoadedImpl(
      {required this.imageId,
      required this.imageUrl,
      required this.photographer,
      required this.description,
      required this.shareableUrl});

  @override
  final int imageId;
  @override
  final String imageUrl;
  @override
  final String? photographer;
  @override
  final String? description;
  @override
  final String shareableUrl;

  @override
  String toString() {
    return 'ImageDetailsPageState.loaded(imageId: $imageId, imageUrl: $imageUrl, photographer: $photographer, description: $description, shareableUrl: $shareableUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDetailsPageLoadedImpl &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shareableUrl, shareableUrl) ||
                other.shareableUrl == shareableUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, imageId, imageUrl, photographer, description, shareableUrl);

  /// Create a copy of ImageDetailsPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDetailsPageLoadedImplCopyWith<_$ImageDetailsPageLoadedImpl>
      get copyWith => __$$ImageDetailsPageLoadedImplCopyWithImpl<
          _$ImageDetailsPageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int imageId, String imageUrl,
            String? photographer, String? description, String shareableUrl)
        loaded,
  }) {
    return loaded(imageId, imageUrl, photographer, description, shareableUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int imageId, String imageUrl, String? photographer,
            String? description, String shareableUrl)?
        loaded,
  }) {
    return loaded?.call(
        imageId, imageUrl, photographer, description, shareableUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int imageId, String imageUrl, String? photographer,
            String? description, String shareableUrl)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(imageId, imageUrl, photographer, description, shareableUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageDetailsPageLoading value) loading,
    required TResult Function(ImageDetailsPageLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageDetailsPageLoading value)? loading,
    TResult? Function(ImageDetailsPageLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageDetailsPageLoading value)? loading,
    TResult Function(ImageDetailsPageLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ImageDetailsPageLoaded implements ImageDetailsPageState {
  const factory ImageDetailsPageLoaded(
      {required final int imageId,
      required final String imageUrl,
      required final String? photographer,
      required final String? description,
      required final String shareableUrl}) = _$ImageDetailsPageLoadedImpl;

  int get imageId;
  String get imageUrl;
  String? get photographer;
  String? get description;
  String get shareableUrl;

  /// Create a copy of ImageDetailsPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageDetailsPageLoadedImplCopyWith<_$ImageDetailsPageLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
