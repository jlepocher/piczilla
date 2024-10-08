// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageSearchState {
  String get searchText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText, List<String> searchHistory)
        ready,
    required TResult Function(String searchText) searching,
    required TResult Function(String searchText, List<ImageModel> results)
        resultsFound,
    required TResult Function(String searchText) noResultsFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText, List<String> searchHistory)? ready,
    TResult? Function(String searchText)? searching,
    TResult? Function(String searchText, List<ImageModel> results)?
        resultsFound,
    TResult? Function(String searchText)? noResultsFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText, List<String> searchHistory)? ready,
    TResult Function(String searchText)? searching,
    TResult Function(String searchText, List<ImageModel> results)? resultsFound,
    TResult Function(String searchText)? noResultsFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSearchReady value) ready,
    required TResult Function(ImageSearchSearching value) searching,
    required TResult Function(ImageSearchResultsFound value) resultsFound,
    required TResult Function(ImageSearchNoResultsFound value) noResultsFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSearchReady value)? ready,
    TResult? Function(ImageSearchSearching value)? searching,
    TResult? Function(ImageSearchResultsFound value)? resultsFound,
    TResult? Function(ImageSearchNoResultsFound value)? noResultsFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSearchReady value)? ready,
    TResult Function(ImageSearchSearching value)? searching,
    TResult Function(ImageSearchResultsFound value)? resultsFound,
    TResult Function(ImageSearchNoResultsFound value)? noResultsFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageSearchStateCopyWith<ImageSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageSearchStateCopyWith<$Res> {
  factory $ImageSearchStateCopyWith(
          ImageSearchState value, $Res Function(ImageSearchState) then) =
      _$ImageSearchStateCopyWithImpl<$Res, ImageSearchState>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class _$ImageSearchStateCopyWithImpl<$Res, $Val extends ImageSearchState>
    implements $ImageSearchStateCopyWith<$Res> {
  _$ImageSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageSearchReadyImplCopyWith<$Res>
    implements $ImageSearchStateCopyWith<$Res> {
  factory _$$ImageSearchReadyImplCopyWith(_$ImageSearchReadyImpl value,
          $Res Function(_$ImageSearchReadyImpl) then) =
      __$$ImageSearchReadyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText, List<String> searchHistory});
}

/// @nodoc
class __$$ImageSearchReadyImplCopyWithImpl<$Res>
    extends _$ImageSearchStateCopyWithImpl<$Res, _$ImageSearchReadyImpl>
    implements _$$ImageSearchReadyImplCopyWith<$Res> {
  __$$ImageSearchReadyImplCopyWithImpl(_$ImageSearchReadyImpl _value,
      $Res Function(_$ImageSearchReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? searchHistory = null,
  }) {
    return _then(_$ImageSearchReadyImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      searchHistory: null == searchHistory
          ? _value._searchHistory
          : searchHistory // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ImageSearchReadyImpl implements ImageSearchReady {
  const _$ImageSearchReadyImpl(
      {this.searchText = "", required final List<String> searchHistory})
      : _searchHistory = searchHistory;

  @override
  @JsonKey()
  final String searchText;
  final List<String> _searchHistory;
  @override
  List<String> get searchHistory {
    if (_searchHistory is EqualUnmodifiableListView) return _searchHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchHistory);
  }

  @override
  String toString() {
    return 'ImageSearchState.ready(searchText: $searchText, searchHistory: $searchHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSearchReadyImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            const DeepCollectionEquality()
                .equals(other._searchHistory, _searchHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText,
      const DeepCollectionEquality().hash(_searchHistory));

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSearchReadyImplCopyWith<_$ImageSearchReadyImpl> get copyWith =>
      __$$ImageSearchReadyImplCopyWithImpl<_$ImageSearchReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText, List<String> searchHistory)
        ready,
    required TResult Function(String searchText) searching,
    required TResult Function(String searchText, List<ImageModel> results)
        resultsFound,
    required TResult Function(String searchText) noResultsFound,
  }) {
    return ready(searchText, searchHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText, List<String> searchHistory)? ready,
    TResult? Function(String searchText)? searching,
    TResult? Function(String searchText, List<ImageModel> results)?
        resultsFound,
    TResult? Function(String searchText)? noResultsFound,
  }) {
    return ready?.call(searchText, searchHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText, List<String> searchHistory)? ready,
    TResult Function(String searchText)? searching,
    TResult Function(String searchText, List<ImageModel> results)? resultsFound,
    TResult Function(String searchText)? noResultsFound,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(searchText, searchHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSearchReady value) ready,
    required TResult Function(ImageSearchSearching value) searching,
    required TResult Function(ImageSearchResultsFound value) resultsFound,
    required TResult Function(ImageSearchNoResultsFound value) noResultsFound,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSearchReady value)? ready,
    TResult? Function(ImageSearchSearching value)? searching,
    TResult? Function(ImageSearchResultsFound value)? resultsFound,
    TResult? Function(ImageSearchNoResultsFound value)? noResultsFound,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSearchReady value)? ready,
    TResult Function(ImageSearchSearching value)? searching,
    TResult Function(ImageSearchResultsFound value)? resultsFound,
    TResult Function(ImageSearchNoResultsFound value)? noResultsFound,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class ImageSearchReady implements ImageSearchState {
  const factory ImageSearchReady(
      {final String searchText,
      required final List<String> searchHistory}) = _$ImageSearchReadyImpl;

  @override
  String get searchText;
  List<String> get searchHistory;

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSearchReadyImplCopyWith<_$ImageSearchReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageSearchSearchingImplCopyWith<$Res>
    implements $ImageSearchStateCopyWith<$Res> {
  factory _$$ImageSearchSearchingImplCopyWith(_$ImageSearchSearchingImpl value,
          $Res Function(_$ImageSearchSearchingImpl) then) =
      __$$ImageSearchSearchingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$ImageSearchSearchingImplCopyWithImpl<$Res>
    extends _$ImageSearchStateCopyWithImpl<$Res, _$ImageSearchSearchingImpl>
    implements _$$ImageSearchSearchingImplCopyWith<$Res> {
  __$$ImageSearchSearchingImplCopyWithImpl(_$ImageSearchSearchingImpl _value,
      $Res Function(_$ImageSearchSearchingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$ImageSearchSearchingImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageSearchSearchingImpl implements ImageSearchSearching {
  const _$ImageSearchSearchingImpl({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'ImageSearchState.searching(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSearchSearchingImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSearchSearchingImplCopyWith<_$ImageSearchSearchingImpl>
      get copyWith =>
          __$$ImageSearchSearchingImplCopyWithImpl<_$ImageSearchSearchingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText, List<String> searchHistory)
        ready,
    required TResult Function(String searchText) searching,
    required TResult Function(String searchText, List<ImageModel> results)
        resultsFound,
    required TResult Function(String searchText) noResultsFound,
  }) {
    return searching(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText, List<String> searchHistory)? ready,
    TResult? Function(String searchText)? searching,
    TResult? Function(String searchText, List<ImageModel> results)?
        resultsFound,
    TResult? Function(String searchText)? noResultsFound,
  }) {
    return searching?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText, List<String> searchHistory)? ready,
    TResult Function(String searchText)? searching,
    TResult Function(String searchText, List<ImageModel> results)? resultsFound,
    TResult Function(String searchText)? noResultsFound,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSearchReady value) ready,
    required TResult Function(ImageSearchSearching value) searching,
    required TResult Function(ImageSearchResultsFound value) resultsFound,
    required TResult Function(ImageSearchNoResultsFound value) noResultsFound,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSearchReady value)? ready,
    TResult? Function(ImageSearchSearching value)? searching,
    TResult? Function(ImageSearchResultsFound value)? resultsFound,
    TResult? Function(ImageSearchNoResultsFound value)? noResultsFound,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSearchReady value)? ready,
    TResult Function(ImageSearchSearching value)? searching,
    TResult Function(ImageSearchResultsFound value)? resultsFound,
    TResult Function(ImageSearchNoResultsFound value)? noResultsFound,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class ImageSearchSearching implements ImageSearchState {
  const factory ImageSearchSearching({required final String searchText}) =
      _$ImageSearchSearchingImpl;

  @override
  String get searchText;

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSearchSearchingImplCopyWith<_$ImageSearchSearchingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageSearchResultsFoundImplCopyWith<$Res>
    implements $ImageSearchStateCopyWith<$Res> {
  factory _$$ImageSearchResultsFoundImplCopyWith(
          _$ImageSearchResultsFoundImpl value,
          $Res Function(_$ImageSearchResultsFoundImpl) then) =
      __$$ImageSearchResultsFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText, List<ImageModel> results});
}

/// @nodoc
class __$$ImageSearchResultsFoundImplCopyWithImpl<$Res>
    extends _$ImageSearchStateCopyWithImpl<$Res, _$ImageSearchResultsFoundImpl>
    implements _$$ImageSearchResultsFoundImplCopyWith<$Res> {
  __$$ImageSearchResultsFoundImplCopyWithImpl(
      _$ImageSearchResultsFoundImpl _value,
      $Res Function(_$ImageSearchResultsFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? results = null,
  }) {
    return _then(_$ImageSearchResultsFoundImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

class _$ImageSearchResultsFoundImpl implements ImageSearchResultsFound {
  const _$ImageSearchResultsFoundImpl(
      {required this.searchText, required final List<ImageModel> results})
      : _results = results;

  @override
  final String searchText;
  final List<ImageModel> _results;
  @override
  List<ImageModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ImageSearchState.resultsFound(searchText: $searchText, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSearchResultsFoundImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, searchText, const DeepCollectionEquality().hash(_results));

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSearchResultsFoundImplCopyWith<_$ImageSearchResultsFoundImpl>
      get copyWith => __$$ImageSearchResultsFoundImplCopyWithImpl<
          _$ImageSearchResultsFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText, List<String> searchHistory)
        ready,
    required TResult Function(String searchText) searching,
    required TResult Function(String searchText, List<ImageModel> results)
        resultsFound,
    required TResult Function(String searchText) noResultsFound,
  }) {
    return resultsFound(searchText, results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText, List<String> searchHistory)? ready,
    TResult? Function(String searchText)? searching,
    TResult? Function(String searchText, List<ImageModel> results)?
        resultsFound,
    TResult? Function(String searchText)? noResultsFound,
  }) {
    return resultsFound?.call(searchText, results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText, List<String> searchHistory)? ready,
    TResult Function(String searchText)? searching,
    TResult Function(String searchText, List<ImageModel> results)? resultsFound,
    TResult Function(String searchText)? noResultsFound,
    required TResult orElse(),
  }) {
    if (resultsFound != null) {
      return resultsFound(searchText, results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSearchReady value) ready,
    required TResult Function(ImageSearchSearching value) searching,
    required TResult Function(ImageSearchResultsFound value) resultsFound,
    required TResult Function(ImageSearchNoResultsFound value) noResultsFound,
  }) {
    return resultsFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSearchReady value)? ready,
    TResult? Function(ImageSearchSearching value)? searching,
    TResult? Function(ImageSearchResultsFound value)? resultsFound,
    TResult? Function(ImageSearchNoResultsFound value)? noResultsFound,
  }) {
    return resultsFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSearchReady value)? ready,
    TResult Function(ImageSearchSearching value)? searching,
    TResult Function(ImageSearchResultsFound value)? resultsFound,
    TResult Function(ImageSearchNoResultsFound value)? noResultsFound,
    required TResult orElse(),
  }) {
    if (resultsFound != null) {
      return resultsFound(this);
    }
    return orElse();
  }
}

abstract class ImageSearchResultsFound implements ImageSearchState {
  const factory ImageSearchResultsFound(
      {required final String searchText,
      required final List<ImageModel> results}) = _$ImageSearchResultsFoundImpl;

  @override
  String get searchText;
  List<ImageModel> get results;

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSearchResultsFoundImplCopyWith<_$ImageSearchResultsFoundImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageSearchNoResultsFoundImplCopyWith<$Res>
    implements $ImageSearchStateCopyWith<$Res> {
  factory _$$ImageSearchNoResultsFoundImplCopyWith(
          _$ImageSearchNoResultsFoundImpl value,
          $Res Function(_$ImageSearchNoResultsFoundImpl) then) =
      __$$ImageSearchNoResultsFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$ImageSearchNoResultsFoundImplCopyWithImpl<$Res>
    extends _$ImageSearchStateCopyWithImpl<$Res,
        _$ImageSearchNoResultsFoundImpl>
    implements _$$ImageSearchNoResultsFoundImplCopyWith<$Res> {
  __$$ImageSearchNoResultsFoundImplCopyWithImpl(
      _$ImageSearchNoResultsFoundImpl _value,
      $Res Function(_$ImageSearchNoResultsFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$ImageSearchNoResultsFoundImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageSearchNoResultsFoundImpl implements ImageSearchNoResultsFound {
  const _$ImageSearchNoResultsFoundImpl({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'ImageSearchState.noResultsFound(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSearchNoResultsFoundImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSearchNoResultsFoundImplCopyWith<_$ImageSearchNoResultsFoundImpl>
      get copyWith => __$$ImageSearchNoResultsFoundImplCopyWithImpl<
          _$ImageSearchNoResultsFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText, List<String> searchHistory)
        ready,
    required TResult Function(String searchText) searching,
    required TResult Function(String searchText, List<ImageModel> results)
        resultsFound,
    required TResult Function(String searchText) noResultsFound,
  }) {
    return noResultsFound(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText, List<String> searchHistory)? ready,
    TResult? Function(String searchText)? searching,
    TResult? Function(String searchText, List<ImageModel> results)?
        resultsFound,
    TResult? Function(String searchText)? noResultsFound,
  }) {
    return noResultsFound?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText, List<String> searchHistory)? ready,
    TResult Function(String searchText)? searching,
    TResult Function(String searchText, List<ImageModel> results)? resultsFound,
    TResult Function(String searchText)? noResultsFound,
    required TResult orElse(),
  }) {
    if (noResultsFound != null) {
      return noResultsFound(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ImageSearchReady value) ready,
    required TResult Function(ImageSearchSearching value) searching,
    required TResult Function(ImageSearchResultsFound value) resultsFound,
    required TResult Function(ImageSearchNoResultsFound value) noResultsFound,
  }) {
    return noResultsFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ImageSearchReady value)? ready,
    TResult? Function(ImageSearchSearching value)? searching,
    TResult? Function(ImageSearchResultsFound value)? resultsFound,
    TResult? Function(ImageSearchNoResultsFound value)? noResultsFound,
  }) {
    return noResultsFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ImageSearchReady value)? ready,
    TResult Function(ImageSearchSearching value)? searching,
    TResult Function(ImageSearchResultsFound value)? resultsFound,
    TResult Function(ImageSearchNoResultsFound value)? noResultsFound,
    required TResult orElse(),
  }) {
    if (noResultsFound != null) {
      return noResultsFound(this);
    }
    return orElse();
  }
}

abstract class ImageSearchNoResultsFound implements ImageSearchState {
  const factory ImageSearchNoResultsFound({required final String searchText}) =
      _$ImageSearchNoResultsFoundImpl;

  @override
  String get searchText;

  /// Create a copy of ImageSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSearchNoResultsFoundImplCopyWith<_$ImageSearchNoResultsFoundImpl>
      get copyWith => throw _privateConstructorUsedError;
}
