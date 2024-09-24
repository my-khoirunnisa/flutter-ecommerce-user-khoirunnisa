import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/auth_remote_datasource.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRemoteDatasource authRemoteDatasource;
  RegisterBloc(
    this.authRemoteDatasource,
  ) : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final result = await authRemoteDatasource.register(
          event.name, event.email, event.password);
      result.fold((l) => emit(_Error(l)), (r) => emit(const _Success()));
    });
  }
}
