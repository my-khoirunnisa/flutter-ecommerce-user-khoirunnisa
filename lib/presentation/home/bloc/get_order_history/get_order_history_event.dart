part of 'get_order_history_bloc.dart';

@freezed
class GetOrderHistoryEvent with _$GetOrderHistoryEvent {
  const factory GetOrderHistoryEvent.started() = _Started;
  const factory GetOrderHistoryEvent.getOrderHistory() = _GetOrderHistory;
}