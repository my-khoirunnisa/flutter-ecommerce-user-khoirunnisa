// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_ecommerce_user/data/datasources/store_remote_Datasource.dart';

import '../../../../data/models/response/list_store_response_model.dart';

part 'get_store_livestreaming_bloc.freezed.dart';
part 'get_store_livestreaming_event.dart';
part 'get_store_livestreaming_state.dart';

class GetStoreLivestreamingBloc
    extends Bloc<GetStoreLivestreamingEvent, GetStoreLivestreamingState> {
  final StoreRemoteDatasource storeRemoteDatasource;
  GetStoreLivestreamingBloc(
    this.storeRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetLiveStreaming>((event, emit) async {
      emit(const _Loading());
      final result = await storeRemoteDatasource.getLiveStreamingStores();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });
  }
}
