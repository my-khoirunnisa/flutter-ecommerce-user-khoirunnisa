part of 'get_addresses_bloc.dart';

@freezed
class GetAddressesEvent with _$GetAddressesEvent {
  const factory GetAddressesEvent.started() = _Started;
  const factory GetAddressesEvent.getAddresses() = _GetAddresses;
}