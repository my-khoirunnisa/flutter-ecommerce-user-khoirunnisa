part of 'get_store_bloc.dart';

@freezed
class GetStoreEvent with _$GetStoreEvent {
  const factory GetStoreEvent.started() = _Started;
  const factory GetStoreEvent.getStores() = _GetStores;
}