// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/store_remote_Datasource.dart';

import '../../../../data/models/response/list_product_response_model.dart';

part 'get_products_bloc.freezed.dart';
part 'get_products_event.dart';
part 'get_products_state.dart';

class GetProductsBloc extends Bloc<GetProductsEvent, GetProductsState> {
  final StoreRemoteDatasource storeRemoteDatasource;
  GetProductsBloc(
    this.storeRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetProducts>((event, emit) async {
      emit(const _Loading());
      final result = await storeRemoteDatasource.getProducts(event.storeId);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
