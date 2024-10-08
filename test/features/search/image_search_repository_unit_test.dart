import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mockito/mockito.dart';
import 'package:piczilla/features/search/domain/image_search_repository.dart';
import 'package:piczilla/features/search/presentation/widgets/search_history/data/search_history_data_provider.dart';

import '../../helpers/full_tree_test_dependency_setup.dart';
import '../../helpers/full_tree_test_dependency_setup.mocks.dart';
import '../../helpers/mock_extensions/mock_search_history_data_provider_extensions.dart';

void main() {
  group('ImageSearchRepository', () {
    late MockSearchHistoryDataProvider mockSearchHistoryDataProvider;
    late ImageSearchRepository repository;

    setUp(() {
      FullTreeTestDependencySetup.setUpDependenciesWithMocks();

      mockSearchHistoryDataProvider = MockSearchHistoryDataProvider();

      GetIt.I
        ..unregister<SearchHistoryDataProvider>()
        ..registerSingleton<SearchHistoryDataProvider>(mockSearchHistoryDataProvider);

      repository = ImageSearchRepository();
    });

    group('fetchSearchHistory', () {
      test('fetches data from the data provider only once', () async {
        // Arrange
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2']);

        // Act
        await repository.fetchSearchHistory();
        await repository.fetchSearchHistory();

        // Assert
        verify(mockSearchHistoryDataProvider.fetchSearchHistory()).called(1);
      });

      test('throws an exception when data provider throws an exception', () async {
        // Arrange
        final exception = Exception('Error fetching search history');
        mockSearchHistoryDataProvider.mockFetchSearchHistoryError(exception);

        // Act & Assert
        expect(() => repository.fetchSearchHistory(), throwsA(exception));
      });
    });

    group('addToSearchHistory', () {
      test('adds a new entry to the top of the list', () async {
        // Arrange
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2']);
        await repository.fetchSearchHistory();

        // Act
        final result = await repository.addToSearchHistory('newSearch');

        // Assert
        expect(result.first, 'newSearch');
      });

      test('moves an existing entry to the top when re-added', () async {
        // Arrange
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2', 'existingSearch']);
        await repository.fetchSearchHistory();

        // Act
        final result = await repository.addToSearchHistory('existingSearch');

        // Assert
        expect(result.first, 'existingSearch');
      });

      test('limits the number of history entries to 8', () async {
        // Arrange
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2', 'search3', 'search4', 'search5', 'search6', 'search7', 'search8']);
        await repository.fetchSearchHistory();

        // Act
        final result = await repository.addToSearchHistory('newSearch');

        // Assert
        expect(result.length, 8);
      });

      test('removes the oldest entry when adding a new one to keep the limit of 8', () async {
        // Arrange
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2', 'search3', 'search4', 'search5', 'search6', 'search7', 'search8']);
        await repository.fetchSearchHistory();

        // Act
        final result = await repository.addToSearchHistory('newSearch');

        // Assert
        expect(result.contains('search8'), isFalse);
      });

      test('throws an exception when data provider throws an exception during update', () async {
        // Arrange
        final exception = Exception('Error updating search history');
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2']);
        mockSearchHistoryDataProvider.mockUpdateSearchHistoryError(exception);
        await repository.fetchSearchHistory();

        // Act & Assert
        expect(() => repository.addToSearchHistory('newSearch'), throwsA(exception));
      });
    });

    group('removeFromSearchHistory', () {
      test('removes an existing entry from the list', () async {
        // Arrange
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2', 'search3']);
        await repository.fetchSearchHistory();

        // Act
        final result = await repository.removeFromSearchHistory('search2');

        // Assert
        expect(result.contains('search2'), isFalse);
      });

      test('throws an exception when data provider throws an exception during removal', () async {
        // Arrange
        final exception = Exception('Error updating search history');
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2']);
        mockSearchHistoryDataProvider.mockUpdateSearchHistoryError(exception);
        await repository.fetchSearchHistory();

        // Act & Assert
        expect(() => repository.removeFromSearchHistory('search2'), throwsA(exception));
      });
    });

    group('clearSearchHistory', () {
      test('clears the entire search history', () async {
        // Arrange
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2', 'search3']);
        await repository.fetchSearchHistory();

        // Act
        final result = await repository.clearSearchHistory();

        // Assert
        expect(result, isEmpty);
      });

      test('throws an exception when data provider throws an exception during clearing', () async {
        // Arrange
        final exception = Exception('Error clearing search history');
        mockSearchHistoryDataProvider.mockFetchSearchHistory(['search1', 'search2']);
        mockSearchHistoryDataProvider.mockUpdateSearchHistoryError(exception);
        await repository.fetchSearchHistory();

        // Act & Assert
        expect(() => repository.clearSearchHistory(), throwsA(exception));
      });
    });
  });
}
