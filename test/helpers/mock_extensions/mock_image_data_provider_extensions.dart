import 'package:mockito/mockito.dart';
import 'package:piczilla/common/data/paginated_data_model.dart';
import 'package:piczilla/features/images/data/image_data_model.dart';

import '../full_tree_test_dependency_setup.mocks.dart';

extension MockImageDataProviderExtensions on MockImageDataProvider {
  void mockFetchMostPopularImages(PaginatedDataModel<List<ImageDataModel>> paginatedData) {
    when(fetchMostPopularImages(pageNumber: anyNamed('pageNumber'))).thenAnswer((_) async => paginatedData);
  }

  void mockFetchMostPopularImagesError(Exception exception) {
    when(fetchMostPopularImages(pageNumber: anyNamed('pageNumber'))).thenThrow(exception);
  }

  void mockFetchImageDetails(ImageDataModel Function(int imageId) imageDataModelBuilder) {
    when(fetchImageDetails(imageId: anyNamed('imageId'))).thenAnswer((invocation) async {
      final id = invocation.namedArguments[const Symbol('imageId')];
      return imageDataModelBuilder(id);
    });
  }

  void mockSearchImages(PaginatedDataModel<List<ImageDataModel>> Function(String searchText) paginatedDataFunction) {
    when(searchImages(searchText: anyNamed('searchText'), pageNumber: anyNamed('pageNumber'))).thenAnswer(
      (invocation) async {
        final searchText = invocation.namedArguments[const Symbol('searchText')];
        return paginatedDataFunction(searchText);
      },
    );
  }
}
