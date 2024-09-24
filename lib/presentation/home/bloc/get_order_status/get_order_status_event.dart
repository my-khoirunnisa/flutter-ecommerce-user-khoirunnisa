part of 'get_order_status_bloc.dart';

@freezed
class GetOrderStatusEvent with _$GetOrderStatusEvent {
  const factory GetOrderStatusEvent.started() = _Started;
  const factory GetOrderStatusEvent.getOrderStatus(int orderId) = _GetOrderStatus;
}