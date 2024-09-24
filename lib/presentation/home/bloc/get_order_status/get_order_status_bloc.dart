// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/order_remote_datasource.dart';

part 'get_order_status_bloc.freezed.dart';
part 'get_order_status_event.dart';
part 'get_order_status_state.dart';

class GetOrderStatusBloc
    extends Bloc<GetOrderStatusEvent, GetOrderStatusState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  GetOrderStatusBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetOrderStatus>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getStatus(event.orderId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          if (r == 'paid') {
            emit(_Loaded(r));
          } else {
            emit(const _WaitingPayment());
          }
        },
      );
    });
  }
}
