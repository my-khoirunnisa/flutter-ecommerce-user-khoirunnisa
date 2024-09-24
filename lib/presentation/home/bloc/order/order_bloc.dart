// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/order_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/request/order_request_model.dart';
import 'package:flutter_ecommerce_user/data/models/response/order_response_model.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  OrderBloc(
    this.orderRemoteDatasource,
  ) : super(const _Initial()) {
    on<_AddOrder>((event, emit) async {
      emit(const _Loading());
      final result = await orderRemoteDatasource.createOrder(event.order);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
