// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/agora_remote_datasource.dart';

part 'agora_token_bloc.freezed.dart';
part 'agora_token_event.dart';
part 'agora_token_state.dart';

class AgoraTokenBloc extends Bloc<AgoraTokenEvent, AgoraTokenState> {
  final AgoraRemoteDatasource agoraRemoteDatasource;
  AgoraTokenBloc(
    this.agoraRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetToken>((event, emit) async {
      emit(const _Loading());
      final result = await agoraRemoteDatasource.getToken(
          event.channel, event.uid, event.role);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(event.channel, event.uid, r)),
      );
    });
  }
}
