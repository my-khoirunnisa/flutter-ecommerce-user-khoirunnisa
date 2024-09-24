import 'dart:convert';

import 'package:flutter_ecommerce_user/data/models/response/auth_response_model.dart';

class OrderDetailResponseModel {
  final String? status;
  final String? message;
  final OrderDetail? data;

  OrderDetailResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory OrderDetailResponseModel.fromJson(String str) =>
      OrderDetailResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderDetailResponseModel.fromMap(Map<String, dynamic> json) =>
      OrderDetailResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : OrderDetail.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
      };
}

class OrderDetail {
  final int? id;
  final int? userId;
  final int? addressId;
  final int? sellerId;
  final String? totalPrice;
  final String? shippingPrice;
  final String? grandTotal;
  final String? status;
  final dynamic paymentVaName;
  final dynamic paymentVaNumber;
  final String? shippingService;
  final dynamic shippingNumber;
  final String? transactionNumber;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<OrderItem>? orderItems;
  final Address? address;

  OrderDetail({
    this.id,
    this.userId,
    this.addressId,
    this.sellerId,
    this.totalPrice,
    this.shippingPrice,
    this.grandTotal,
    this.status,
    this.paymentVaName,
    this.paymentVaNumber,
    this.shippingService,
    this.shippingNumber,
    this.transactionNumber,
    this.createdAt,
    this.updatedAt,
    this.orderItems,
    this.address,
  });

  factory OrderDetail.fromJson(String str) =>
      OrderDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderDetail.fromMap(Map<String, dynamic> json) => OrderDetail(
        id: json["id"],
        userId: json["user_id"],
        addressId: json["address_id"],
        sellerId: json["seller_id"],
        totalPrice: json["total_price"],
        shippingPrice: json["shipping_price"],
        grandTotal: json["grand_total"],
        status: json["status"],
        paymentVaName: json["payment_va_name"],
        paymentVaNumber: json["payment_va_number"],
        shippingService: json["shipping_service"],
        shippingNumber: json["shipping_number"],
        transactionNumber: json["transaction_number"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        orderItems: json["order_items"] == null
            ? []
            : List<OrderItem>.from(
                json["order_items"]!.map((x) => OrderItem.fromMap(x))),
        address:
            json["address"] == null ? null : Address.fromMap(json["address"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "address_id": addressId,
        "seller_id": sellerId,
        "total_price": totalPrice,
        "shipping_price": shippingPrice,
        "grand_total": grandTotal,
        "status": status,
        "payment_va_name": paymentVaName,
        "payment_va_number": paymentVaNumber,
        "shipping_service": shippingService,
        "shipping_number": shippingNumber,
        "transaction_number": transactionNumber,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "order_items": orderItems == null
            ? []
            : List<dynamic>.from(orderItems!.map((x) => x.toMap())),
        "address": address?.toMap(),
      };
}

class Address {
  final int? id;
  final int? userId;
  final String? country;
  final String? province;
  final String? city;
  final String? district;
  final String? postalCode;
  final String? address;
  final int? isDefault;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final User? user;

  Address({
    this.id,
    this.userId,
    this.country,
    this.province,
    this.city,
    this.district,
    this.postalCode,
    this.address,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory Address.fromJson(String str) => Address.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Address.fromMap(Map<String, dynamic> json) => Address(
        id: json["id"],
        userId: json["user_id"],
        country: json["country"],
        province: json["province"],
        city: json["city"],
        district: json["district"],
        postalCode: json["postal_code"],
        address: json["address"],
        isDefault: json["is_default"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "country": country,
        "province": province,
        "city": city,
        "district": district,
        "postal_code": postalCode,
        "address": address,
        "is_default": isDefault,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class OrderItem {
  final int? id;
  final int? orderId;
  final int? productId;
  final int? quantity;
  final String? price;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Product? product;

  OrderItem({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory OrderItem.fromJson(String str) => OrderItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderItem.fromMap(Map<String, dynamic> json) => OrderItem(
        id: json["id"],
        orderId: json["order_id"],
        productId: json["product_id"],
        quantity: json["quantity"],
        price: json["price"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        product:
            json["product"] == null ? null : Product.fromMap(json["product"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "order_id": orderId,
        "product_id": productId,
        "quantity": quantity,
        "price": price,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toMap(),
      };
}

class Product {
  final int? id;
  final int? sellerId;
  final int? categoryId;
  final String? name;
  final String? description;
  final String? price;
  final int? stock;
  final String? image;
  final int? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Product({
    this.id,
    this.sellerId,
    this.categoryId,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.image,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        sellerId: json["seller_id"],
        categoryId: json["category_id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        image: json["image"],
        isActive: json["is_active"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "seller_id": sellerId,
        "category_id": categoryId,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "image": image,
        "is_active": isActive,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
