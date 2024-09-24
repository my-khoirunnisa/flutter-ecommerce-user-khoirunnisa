import '../../../core/core.dart';

class OrderModel {
  final String? noResi;
  final String status;
  final int totalPrice;

  OrderModel({
    required this.noResi,
    required this.status,
    required this.totalPrice,
  });

  String get totalPriceFormatted => totalPrice.currencyFormatRp;
}

final orders = [
  OrderModel(
    noResi: null,
    status: 'Packaging',
    totalPrice: 190000,
  ),
  OrderModel(
    noResi: '12345678909',
    status: 'Delivery',
    totalPrice: 210000,
  ),
];
