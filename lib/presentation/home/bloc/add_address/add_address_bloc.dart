// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/address_remote_datasource.dart';
import 'package:flutter_ecommerce_user/data/models/request/address_request_model.dart';

part 'add_address_bloc.freezed.dart';
part 'add_address_event.dart';
part 'add_address_state.dart';

class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final AddressRemoteDatasource addressRemoteDatasource;
  AddAddressBloc(
    this.addressRemoteDatasource,
  ) : super(const _Initial()) {
    on<_AddAddress>((event, emit) async {
      emit(const _Loading());
      final result = await addressRemoteDatasource.addAddress(event.address);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(const _Success()),
      );
    });
  }
}
