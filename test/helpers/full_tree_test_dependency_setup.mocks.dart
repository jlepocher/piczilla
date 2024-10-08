// Mocks generated by Mockito 5.4.4 from annotations
// in piczilla/test/helpers/full_tree_test_dependency_setup.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:piczilla/common/data/paginated_data_model.dart' as _i2;
import 'package:piczilla/features/favourites/data/favourite_image_data_model.dart'
    as _i8;
import 'package:piczilla/features/favourites/data/favourites_data_provider.dart'
    as _i7;
import 'package:piczilla/features/images/data/image_data_model.dart' as _i3;
import 'package:piczilla/features/images/data/image_data_provider.dart' as _i4;
import 'package:piczilla/features/search/presentation/widgets/search_history/data/search_history_data_provider.dart'
    as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePaginatedDataModel_0<T> extends _i1.SmartFake
    implements _i2.PaginatedDataModel<T> {
  _FakePaginatedDataModel_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeImageDataModel_1 extends _i1.SmartFake
    implements _i3.ImageDataModel {
  _FakeImageDataModel_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ImageDataProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockImageDataProvider extends _i1.Mock implements _i4.ImageDataProvider {
  MockImageDataProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.PaginatedDataModel<List<_i3.ImageDataModel>>>
      fetchMostPopularImages({required int? pageNumber}) => (super.noSuchMethod(
            Invocation.method(
              #fetchMostPopularImages,
              [],
              {#pageNumber: pageNumber},
            ),
            returnValue: _i5
                .Future<_i2.PaginatedDataModel<List<_i3.ImageDataModel>>>.value(
                _FakePaginatedDataModel_0<List<_i3.ImageDataModel>>(
              this,
              Invocation.method(
                #fetchMostPopularImages,
                [],
                {#pageNumber: pageNumber},
              ),
            )),
          ) as _i5.Future<_i2.PaginatedDataModel<List<_i3.ImageDataModel>>>);

  @override
  _i5.Future<_i2.PaginatedDataModel<List<_i3.ImageDataModel>>> searchImages({
    required String? searchText,
    required int? pageNumber,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchImages,
          [],
          {
            #searchText: searchText,
            #pageNumber: pageNumber,
          },
        ),
        returnValue:
            _i5.Future<_i2.PaginatedDataModel<List<_i3.ImageDataModel>>>.value(
                _FakePaginatedDataModel_0<List<_i3.ImageDataModel>>(
          this,
          Invocation.method(
            #searchImages,
            [],
            {
              #searchText: searchText,
              #pageNumber: pageNumber,
            },
          ),
        )),
      ) as _i5.Future<_i2.PaginatedDataModel<List<_i3.ImageDataModel>>>);

  @override
  _i5.Future<_i3.ImageDataModel> fetchImageDetails({required int? imageId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchImageDetails,
          [],
          {#imageId: imageId},
        ),
        returnValue: _i5.Future<_i3.ImageDataModel>.value(_FakeImageDataModel_1(
          this,
          Invocation.method(
            #fetchImageDetails,
            [],
            {#imageId: imageId},
          ),
        )),
      ) as _i5.Future<_i3.ImageDataModel>);
}

/// A class which mocks [SearchHistoryDataProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchHistoryDataProvider extends _i1.Mock
    implements _i6.SearchHistoryDataProvider {
  MockSearchHistoryDataProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<String>> fetchSearchHistory() => (super.noSuchMethod(
        Invocation.method(
          #fetchSearchHistory,
          [],
        ),
        returnValue: _i5.Future<List<String>>.value(<String>[]),
      ) as _i5.Future<List<String>>);

  @override
  _i5.Future<void> updateSearchHistory(List<String>? updatedHistory) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateSearchHistory,
          [updatedHistory],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [FavouritesDataProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockFavouritesDataProvider extends _i1.Mock
    implements _i7.FavouritesDataProvider {
  MockFavouritesDataProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<_i8.FavouriteImageDataModel>> fetchFavouriteImages() =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchFavouriteImages,
          [],
        ),
        returnValue: _i5.Future<List<_i8.FavouriteImageDataModel>>.value(
            <_i8.FavouriteImageDataModel>[]),
      ) as _i5.Future<List<_i8.FavouriteImageDataModel>>);

  @override
  _i5.Future<void> updateFavouriteImages(
          List<_i8.FavouriteImageDataModel>? favourites) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateFavouriteImages,
          [favourites],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}
