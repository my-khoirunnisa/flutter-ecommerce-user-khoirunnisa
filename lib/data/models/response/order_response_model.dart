import 'dart:convert';

class OrderResponseModel {
    final String status;
    final String message;
    final Data data;

    OrderResponseModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory OrderResponseModel.fromJson(String str) => OrderResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory OrderResponseModel.fromMap(Map<String, dynamic> json) => OrderResponseModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data.toMap(),
    };
}

class Data {
    final int userId;
    final int addressId;
    final int sellerId;
    final int shippingPrice;
    final String shippingService;
    final String status;
    final int totalPrice;
    final int grandTotal;
    final String transactionNumber;
    final String paymentVaName;
    final DateTime updatedAt;
    final DateTime createdAt;
    final int id;
    final String paymentVaNumber;

    Data({
        required this.userId,
        required this.addressId,
        required this.sellerId,
        required this.shippingPrice,
        required this.shippingService,
        required this.status,
        required this.totalPrice,
        required this.grandTotal,
        required this.transactionNumber,
        required this.paymentVaName,
        required this.updatedAt,
        required this.createdAt,
        required this.id,
        required this.paymentVaNumber,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        addressId: json["address_id"],
        sellerId: json["seller_id"],
        shippingPrice: json["shipping_price"],
        shippingService: json["shipping_service"],
        status: json["status"],
        totalPrice: json["total_price"],
        grandTotal: json["grand_total"],
        transactionNumber: json["transaction_number"],
        paymentVaName: json["payment_va_name"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
        paymentVaNumber: json["payment_va_number"],
    );

    Map<String, dynamic> toMap() => {
        "user_id": userId,
        "address_id": addressId,
        "seller_id": sellerId,
        "shipping_price": shippingPrice,
        "shipping_service": shippingService,
        "status": status,
        "total_price": totalPrice,
        "grand_total": grandTotal,
        "transaction_number": transactionNumber,
        "payment_va_name": paymentVaName,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
        "payment_va_number": paymentVaNumber,
    };
}
