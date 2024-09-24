part of 'get_store_bloc.dart';

@freezed
class GetStoreState with _$GetStoreState {
  const factory GetStoreState.initial() = _Initial;
  const factory GetStoreState.loading() = _Loading;
  const factory GetStoreState.loaded(List<Store> stores) = _Loaded;
  const factory GetStoreState.error(String message) = _Error;
}
