part of 'get_products_bloc.dart';

@freezed
class GetProductsState with _$GetProductsState {
  const factory GetProductsState.initial() = _Initial;
  const factory GetProductsState.loading() = _Loading;
  const factory GetProductsState.loaded(List<Product> products) = _Loaded;
  const factory GetProductsState.error(String error) = _Error;
}
