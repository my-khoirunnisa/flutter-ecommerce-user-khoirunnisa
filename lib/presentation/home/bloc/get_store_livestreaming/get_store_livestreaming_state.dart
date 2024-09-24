part of 'get_store_livestreaming_bloc.dart';

@freezed
class GetStoreLivestreamingState with _$GetStoreLivestreamingState {
  const factory GetStoreLivestreamingState.initial() = _Initial;
  const factory GetStoreLivestreamingState.loading() = _Loading;
  const factory GetStoreLivestreamingState.loaded(List<Store> storeLiveStreaming) = _Loaded;
  const factory GetStoreLivestreamingState.error(String message) = _Error;
}
