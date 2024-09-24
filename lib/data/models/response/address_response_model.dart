import 'dart:convert';

class AddressResponseModel {
    final String? status;
    final String? message;
    final List<Address>? data;

    AddressResponseModel({
        this.status,
        this.message,
        this.data,
    });

    factory AddressResponseModel.fromJson(String str) => AddressResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AddressResponseModel.fromMap(Map<String, dynamic> json) => AddressResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Address>.from(json["data"]!.map((x) => Address.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
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
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
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
