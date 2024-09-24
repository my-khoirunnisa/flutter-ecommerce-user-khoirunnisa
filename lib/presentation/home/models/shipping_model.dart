import '../../../core/core.dart';

class ShippingModel {
  final String type;
  final int price;
  final String estimate;

  ShippingModel({
    required this.type,
    required this.price,
    required this.estimate,
  });

  String get priceFormat => price.currencyFormatRp;
}

final shippings = [
  ShippingModel(
    type: 'REG',
    price: 20000,
    estimate: 'Estimasi tiba 3-4 hari',
  ),
  ShippingModel(
    type: 'YES',
    price: 20000,
    estimate: 'Estimasi tiba 3-4 hari',
  ),
  ShippingModel(
    type: 'OKE',
    price: 20000,
    estimate: 'Estimasi tiba 3-4 hari',
  ),
];
