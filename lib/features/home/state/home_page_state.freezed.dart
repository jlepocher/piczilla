// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingFailed,
    required TResult Function(HomePageModel pageModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingFailed,
    TResult? Function(HomePageModel pageModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingFailed,
    TResult Function(HomePageModel pageModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageLoadingFailed value) loadingFailed,
    required TResult Function(HomePageLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageLoadingFailed value)? loadingFailed,
    TResult? Function(HomePageLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageLoadingFailed value)? loadingFailed,
    TResult Function(HomePageLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomePageLoadingImplCopyWith<$Res> {
  factory _$$HomePageLoadingImplCopyWith(_$HomePageLoadingImpl value,
          $Res Function(_$HomePageLoadingImpl) then) =
      __$$HomePageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageLoadingImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageLoadingImpl>
    implements _$$HomePageLoadingImplCopyWith<$Res> {
  __$$HomePageLoadingImplCopyWithImpl(
      _$HomePageLoadingImpl _value, $Res Function(_$HomePageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomePageLoadingImpl implements HomePageLoading {
  const _$HomePageLoadingImpl();

  @override
  String toString() {
    return 'HomePageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingFailed,
    required TResult Function(HomePageModel pageModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingFailed,
    TResult? Function(HomePageModel pageModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingFailed,
    TResult Function(HomePageModel pageModel)? loaded,
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
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageLoadingFailed value) loadingFailed,
    required TResult Function(HomePageLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageLoadingFailed value)? loadingFailed,
    TResult? Function(HomePageLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageLoadingFailed value)? loadingFailed,
    TResult Function(HomePageLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomePageLoading implements HomePageState {
  const factory HomePageLoading() = _$HomePageLoadingImpl;
}

/// @nodoc
abstract class _$$HomePageLoadingFailedImplCopyWith<$Res> {
  factory _$$HomePageLoadingFailedImplCopyWith(
          _$HomePageLoadingFailedImpl value,
          $Res Function(_$HomePageLoadingFailedImpl) then) =
      __$$HomePageLoadingFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageLoadingFailedImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageLoadingFailedImpl>
    implements _$$HomePageLoadingFailedImplCopyWith<$Res> {
  __$$HomePageLoadingFailedImplCopyWithImpl(_$HomePageLoadingFailedImpl _value,
      $Res Function(_$HomePageLoadingFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomePageLoadingFailedImpl implements HomePageLoadingFailed {
  const _$HomePageLoadingFailedImpl();

  @override
  String toString() {
    return 'HomePageState.loadingFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageLoadingFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingFailed,
    required TResult Function(HomePageModel pageModel) loaded,
  }) {
    return loadingFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingFailed,
    TResult? Function(HomePageModel pageModel)? loaded,
  }) {
    return loadingFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingFailed,
    TResult Function(HomePageModel pageModel)? loaded,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageLoadingFailed value) loadingFailed,
    required TResult Function(HomePageLoaded value) loaded,
  }) {
    return loadingFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageLoadingFailed value)? loadingFailed,
    TResult? Function(HomePageLoaded value)? loaded,
  }) {
    return loadingFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageLoadingFailed value)? loadingFailed,
    TResult Function(HomePageLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loadingFailed != null) {
      return loadingFailed(this);
    }
    return orElse();
  }
}

abstract class HomePageLoadingFailed implements HomePageState {
  const factory HomePageLoadingFailed() = _$HomePageLoadingFailedImpl;
}

/// @nodoc
abstract class _$$HomePageLoadedImplCopyWith<$Res> {
  factory _$$HomePageLoadedImplCopyWith(_$HomePageLoadedImpl value,
          $Res Function(_$HomePageLoadedImpl) then) =
      __$$HomePageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomePageModel pageModel});

  $HomePageModelCopyWith<$Res> get pageModel;
}

/// @nodoc
class __$$HomePageLoadedImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageLoadedImpl>
    implements _$$HomePageLoadedImplCopyWith<$Res> {
  __$$HomePageLoadedImplCopyWithImpl(
      _$HomePageLoadedImpl _value, $Res Function(_$HomePageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageModel = null,
  }) {
    return _then(_$HomePageLoadedImpl(
      pageModel: null == pageModel
          ? _value.pageModel
          : pageModel // ignore: cast_nullable_to_non_nullable
              as HomePageModel,
    ));
  }

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomePageModelCopyWith<$Res> get pageModel {
    return $HomePageModelCopyWith<$Res>(_value.pageModel, (value) {
      return _then(_value.copyWith(pageModel: value));
    });
  }
}

/// @nodoc

class _$HomePageLoadedImpl implements HomePageLoaded {
  const _$HomePageLoadedImpl({required this.pageModel});

  @override
  final HomePageModel pageModel;

  @override
  String toString() {
    return 'HomePageState.loaded(pageModel: $pageModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageLoadedImpl &&
            (identical(other.pageModel, pageModel) ||
                other.pageModel == pageModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageModel);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageLoadedImplCopyWith<_$HomePageLoadedImpl> get copyWith =>
      __$$HomePageLoadedImplCopyWithImpl<_$HomePageLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loadingFailed,
    required TResult Function(HomePageModel pageModel) loaded,
  }) {
    return loaded(pageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loadingFailed,
    TResult? Function(HomePageModel pageModel)? loaded,
  }) {
    return loaded?.call(pageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loadingFailed,
    TResult Function(HomePageModel pageModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageLoading value) loading,
    required TResult Function(HomePageLoadingFailed value) loadingFailed,
    required TResult Function(HomePageLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageLoading value)? loading,
    TResult? Function(HomePageLoadingFailed value)? loadingFailed,
    TResult? Function(HomePageLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageLoading value)? loading,
    TResult Function(HomePageLoadingFailed value)? loadingFailed,
    TResult Function(HomePageLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomePageLoaded implements HomePageState {
  const factory HomePageLoaded({required final HomePageModel pageModel}) =
      _$HomePageLoadedImpl;

  HomePageModel get pageModel;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageLoadedImplCopyWith<_$HomePageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
