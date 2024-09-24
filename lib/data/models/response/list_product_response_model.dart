import 'dart:convert';

class ListProductResponseModel {
  final String? status;
  final String? message;
  final List<Product>? data;

  ListProductResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory ListProductResponseModel.fromJson(String str) =>
      ListProductResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListProductResponseModel.fromMap(Map<String, dynamic> json) =>
      ListProductResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Product>.from(json["data"]!.map((x) => Product.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
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
