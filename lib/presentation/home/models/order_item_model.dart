import 'package:flutter_ecommerce_user/data/models/response/list_product_response_model.dart';

class OrderItemModel {
  Product product;
  int quantity;
  OrderItemModel({
    required this.product,
    required this.quantity,
  });

  @override
  bool operator ==(covariant OrderItemModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.product == product &&
      other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;

  OrderItemModel copyWith({
    Product? product,
    int? quantity,
  }) {
    return OrderItemModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }
}
