import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/store_remote_Datasource.dart';

import '../../../../data/models/response/list_store_response_model.dart';

part 'get_store_bloc.freezed.dart';
part 'get_store_event.dart';
part 'get_store_state.dart';

class GetStoreBloc extends Bloc<GetStoreEvent, GetStoreState> {
  final StoreRemoteDatasource storeRemoteDatasource;
  GetStoreBloc(
    this.storeRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetStores>((event, emit) async {
      emit(const _Loading());
      final result = await storeRemoteDatasource.getStores();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
