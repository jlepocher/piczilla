import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:piczilla/common/async/debounce_mixin.dart';
import 'package:piczilla/features/home/state/home_page_model.dart';
import 'package:piczilla/features/home/state/home_page_state.dart';
import 'package:piczilla/features/images/domain/image_repository.dart';

class HomePageCubit extends Cubit<HomePageState> with Debounce {
  HomePageCubit() : super(const HomePageState.loading());

  final _imageRepository = GetIt.I<ImageRepository>();
  HomePageModel _pageModel = HomePageModel.empty();
  bool _fetchingMoreData = false;

  void initialise() async {
    // This is only needed in case we need to retry the initialisation.
    emit(const HomePageState.loading());
    await _fetchMostPopularImages();
  }

  void onReachedScrollBottom() async {
    // Don't do anything if we are already fetching some data
    if (_fetchingMoreData) return;

    // Debounce fetch call to guarantee we only ever make one call at a time
    debounce(() async {
      if (!_fetchingMoreData) {
        _fetchingMoreData = true;
        await _fetchMostPopularImages();
        _fetchingMoreData = false;
      }
    });
  }

  Future<void> _fetchMostPopularImages() async {
    try {
      if (_pageModel.nextPageNumberToFetch != null) {
        final popularImages = await _imageRepository.fetchMostPopularImages(pageNumber: _pageModel.nextPageNumberToFetch!);
        _pageModel = _pageModel.copyWith(
          images: [..._pageModel.images, ...popularImages.data],
          nextPageNumberToFetch: popularImages.nextPage,
        );

        emit(HomePageState.loaded(pageModel: _pageModel));
      }
    } on Exception {
      // NOTE The error should be logged here, and a crash report should be created for monitoring.
      emit(const HomePageState.loadingFailed());
    }
  }

  @override
  Future<void> close() {
    disposeDebounce();
    return super.close();
  }
}
