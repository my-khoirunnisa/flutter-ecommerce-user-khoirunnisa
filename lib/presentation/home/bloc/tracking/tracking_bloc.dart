import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_user/data/datasources/rajaongkir_remote_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_ecommerce_user/data/models/response/tracking_response_model.dart';

part 'tracking_bloc.freezed.dart';
part 'tracking_event.dart';
part 'tracking_state.dart';

class TrackingBloc extends Bloc<TrackingEvent, TrackingState> {
  final RajaongkirRemoteDatasource rajaongkirRemoteDatasource;
  TrackingBloc(
    this.rajaongkirRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetTracking>((event, emit) async {
      emit(const _Loading());
      final result = await rajaongkirRemoteDatasource.getWaybill(
          event.kurir, event.noResi);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
