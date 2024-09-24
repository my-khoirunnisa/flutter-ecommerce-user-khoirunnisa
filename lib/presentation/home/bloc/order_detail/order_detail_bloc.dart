// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/order_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/response/order_detail_response_model.dart';

part 'order_detail_bloc.freezed.dart';
part 'order_detail_event.dart';
part 'order_detail_state.dart';

class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  OrderDetailBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetOrderDetail>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.getOrderDetail(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
