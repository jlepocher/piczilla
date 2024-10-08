import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piczilla/features/home/state/home_page_model.dart';

part 'home_page_state.freezed.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.loading() = HomePageLoading;

  const factory HomePageState.loadingFailed() = HomePageLoadingFailed;

  const factory HomePageState.loaded({
    required HomePageModel pageModel,
  }) = HomePageLoaded;
}
