part of 'get_store_livestreaming_bloc.dart';

@freezed
class GetStoreLivestreamingEvent with _$GetStoreLivestreamingEvent {
  const factory GetStoreLivestreamingEvent.started() = _Started;
  const factory GetStoreLivestreamingEvent.getLiveStreaming() = _GetLiveStreaming; 
}