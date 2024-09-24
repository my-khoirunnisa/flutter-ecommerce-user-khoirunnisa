// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/address_remote_datasource.dart';

import '../../../../data/models/response/address_response_model.dart';

part 'get_addresses_bloc.freezed.dart';
part 'get_addresses_event.dart';
part 'get_addresses_state.dart';

class GetAddressesBloc extends Bloc<GetAddressesEvent, GetAddressesState> {
  final AddressRemoteDatasource addressRemoteDatasource;
  GetAddressesBloc(
    this.addressRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetAddresses>((event, emit) async {
      emit(const _Loading());
      final result = await addressRemoteDatasource.getAddress();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data!)),
      );
    });
  }
}
