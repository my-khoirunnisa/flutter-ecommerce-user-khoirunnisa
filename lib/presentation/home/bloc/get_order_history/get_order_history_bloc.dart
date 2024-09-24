// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/order_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/response/history_response_model.dart';

part 'get_order_history_bloc.freezed.dart';
part 'get_order_history_event.dart';
part 'get_order_history_state.dart';

class GetOrderHistoryBloc extends Bloc<GetOrderHistoryEvent, GetOrderHistoryState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  GetOrderHistoryBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetOrderHistory>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getOrderHistory();
      result.fold(
        (l) => emit(_Error(l)), 
        (r) => emit(_Loaded(r)),);
    });
  }
}
