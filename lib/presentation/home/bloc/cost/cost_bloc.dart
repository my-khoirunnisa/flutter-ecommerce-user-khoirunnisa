// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/response/cost_response_model.dart';

part 'cost_bloc.freezed.dart';
part 'cost_event.dart';
part 'cost_state.dart';

class CostBloc extends Bloc<CostEvent, CostState> {
  final RajaongkirRemoteDatasource rajaongkirRemoteDatasource;
  CostBloc(
    this.rajaongkirRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetCosts>((event, emit) async {
      emit(const _Loading());
      final result = await rajaongkirRemoteDatasource.getCost(
        event.origin,
        event.destination,
        event.courier,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
