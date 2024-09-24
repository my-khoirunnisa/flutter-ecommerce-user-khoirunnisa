part of 'get_order_history_bloc.dart';

@freezed
class GetOrderHistoryState with _$GetOrderHistoryState {
  const factory GetOrderHistoryState.initial() = _Initial;
  const factory GetOrderHistoryState.loading() = _Loading;
  const factory GetOrderHistoryState.loaded(HistoryResponseModel data) = _Loaded;
  const factory GetOrderHistoryState.error(String message) = _Error;
}
