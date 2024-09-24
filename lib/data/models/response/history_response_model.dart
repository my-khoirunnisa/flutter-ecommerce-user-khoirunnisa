import 'dart:convert';

class HistoryResponseModel {
  final String? status;
  final String? message;
  final List<History>? data;

  HistoryResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory HistoryResponseModel.fromJson(String str) =>
      HistoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HistoryResponseModel.fromMap(Map<String, dynamic> json) =>
      HistoryResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<History>.from(json["data"]!.map((x) => History.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class History {
  final int? id;
  final int? userId;
  final int? addressId;
  final int? sellerId;
  final String? totalPrice;
  final String? shippingPrice;
  final String? grandTotal;
  final String? status;
  final String? paymentVaName;
  final String? paymentVaNumber;
  final String? shippingService;
  final String? shippingNumber;
  final String? transactionNumber;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  History({
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
  });

  factory History.fromJson(String str) => History.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory History.fromMap(Map<String, dynamic> json) => History(
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
      };
}
