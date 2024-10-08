import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:piczilla/common/config/app_config.dart';
import 'package:piczilla/common/router/app_router.dart';
import 'package:piczilla/features/favourites/data/favourites_data_provider.dart';
import 'package:piczilla/features/favourites/data/favourites_in_memory_data_provider.dart';
import 'package:piczilla/features/images/data/image_data_provider.dart';
import 'package:piczilla/features/images/data/image_pexels_data_provider.dart';
import 'package:piczilla/features/images/domain/image_repository.dart';
import 'package:piczilla/features/search/domain/image_search_repository.dart';
import 'package:piczilla/features/search/presentation/widgets/search_history/data/search_history_data_provider.dart';
import 'package:piczilla/features/search/presentation/widgets/search_history/data/search_history_local_data_provider.dart';

void registerDependencies() {
  GetIt.I
    // Data Providers
    ..registerFactory<ImageDataProvider>(() => ImagePexelsDataProvider())
    // This is registered as a singleton as it's holding data in-memory.
    ..registerSingleton<FavouritesDataProvider>(FavouritesInMemoryDataProvider())
    ..registerFactory<SearchHistoryDataProvider>(() => SearchHistoryLocalDataProvider())

    // Repositories
    ..registerFactory(() => ImageRepository())
    ..registerFactory(() => ImageSearchRepository())

    // Config
    ..registerSingleton<GoRouter>(appRouter())
    ..registerFactory(() => AppConfig());
}
