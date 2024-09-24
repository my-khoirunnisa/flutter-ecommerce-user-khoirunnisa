part of 'get_order_status_bloc.dart';

@freezed
class GetOrderStatusState with _$GetOrderStatusState {
  const factory GetOrderStatusState.initial() = _Initial;
  const factory GetOrderStatusState.loading() = _Loading;
  const factory GetOrderStatusState.loaded(String status) = _Loaded;
  const factory GetOrderStatusState.error(String message) = _Error;
  const factory GetOrderStatusState.waitingPayment() = _WaitingPayment;
}
