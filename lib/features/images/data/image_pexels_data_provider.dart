import 'dart:convert';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:piczilla/common/config/app_config.dart';
import 'package:piczilla/common/data/paginated_data_model.dart';
import 'package:piczilla/features/images/data/image_data_model.dart';
import 'package:piczilla/features/images/data/image_data_provider.dart';
import 'package:piczilla/features/images/presentation/widgets/image_grid.dart';

class ImagePexelsDataProvider implements ImageDataProvider {
  static const _baseUrl = 'https://api.pexels.com/v1';

  final String _apiKey = GetIt.I<AppConfig>().pexelsApiKey ?? "Missing API Key";
  final int _imagesPerPage = 10 * ImageGrid.imageCountPerGridRow;

  @override
  Future<PaginatedDataModel<List<ImageDataModel>>> fetchMostPopularImages({
    required int pageNumber,
  }) async {
    final responseData = await _sendGetRequest("curated?per_page=$_imagesPerPage&page=$pageNumber");

    return PaginatedDataModel(
      data: _parseImageList(responseData),
      nextPage: _parseNextPage(
        responseData: responseData,
        currentPage: pageNumber,
      ),
    );
  }

  @override
  Future<PaginatedDataModel<List<ImageDataModel>>> searchImages({
    required String searchText,
    required int pageNumber,
  }) async {
    final responseData = await _sendGetRequest("search?query=$searchText&per_page=$_imagesPerPage&page=$pageNumber");

    return PaginatedDataModel(
      data: _parseImageList(responseData),
      nextPage: _parseNextPage(
        responseData: responseData,
        currentPage: pageNumber,
      ),
    );
  }

  @override
  Future<ImageDataModel> fetchImageDetails({required int imageId}) async {
    final responseData = await _sendGetRequest("photos/$imageId");
    return ImageDataModel.fromJson(responseData);
  }

  // NOTE: On top of error handling, a retry mechanism should be added to all data fetching/updating calls in the app.
  Future<Map<String, dynamic>> _sendGetRequest(String endpoint) async {
    final response = await http.get(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Authorization': _apiKey},
    );

    if (response.statusCode == 200) {
      return json.decode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception("Failed to fetch data from Pexels API: ${response.statusCode}");
    }
  }

  List<ImageDataModel> _parseImageList(Map<String, dynamic> responseData) {
    return (responseData['photos'] as List).map((json) => ImageDataModel.fromJson(json)).toList();
  }

  /// Check whether a next page is available and calculate its number
  int? _parseNextPage({
    required Map<String, dynamic> responseData,
    required int currentPage,
  }) {
    final nextPageUrl = responseData['next_page']?.toString();
    final hasNextPage = nextPageUrl != null && nextPageUrl.isNotEmpty;

    return hasNextPage ? currentPage + 1 : null;
  }
}
