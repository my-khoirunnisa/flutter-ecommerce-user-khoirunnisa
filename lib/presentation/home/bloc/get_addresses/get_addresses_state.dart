part of 'get_addresses_bloc.dart';

@freezed
class GetAddressesState with _$GetAddressesState {
  const factory GetAddressesState.initial() = _Initial;
  const factory GetAddressesState.loading() = _Loading;
  const factory GetAddressesState.loaded(List<Address> addresses) = _Loaded;
  const factory GetAddressesState.error(String message) = _Error;
}
