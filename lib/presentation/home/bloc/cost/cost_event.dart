part of 'cost_bloc.dart';

@freezed
class CostEvent with _$CostEvent {
  const factory CostEvent.started() = _Started;
  const factory CostEvent.getCosts({
    required String origin,
    required String destination,
    required int weight,
    required String courier,
  }) = _GetCosts;
}
