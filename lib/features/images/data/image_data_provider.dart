import 'package:piczilla/common/data/paginated_data_model.dart';
import 'package:piczilla/features/images/data/image_data_model.dart';

abstract class ImageDataProvider {
  Future<PaginatedDataModel<List<ImageDataModel>>> fetchMostPopularImages({required int pageNumber});

  Future<PaginatedDataModel<List<ImageDataModel>>> searchImages({
    required String searchText,
    required int pageNumber,
  });

  Future<ImageDataModel> fetchImageDetails({required int imageId});
}
