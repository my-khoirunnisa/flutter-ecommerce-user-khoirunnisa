import 'dart:convert';

class AddressRequestModel {
    final String address;
    final String country;
    final String province;
    final String city;
    final String district;
    final String postalCode;
    final bool isDefault;

    AddressRequestModel({
        required this.address,
        required this.country,
        required this.province,
        required this.city,
        required this.district,
        required this.postalCode,
        required this.isDefault,
    });

    factory AddressRequestModel.fromJson(String str) => AddressRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AddressRequestModel.fromMap(Map<String, dynamic> json) => AddressRequestModel(
        address: json["address"],
        country: json["country"],
        province: json["province"],
        city: json["city"],
        district: json["district"],
        postalCode: json["postal_code"],
        isDefault: json["is_default"],
    );

    Map<String, dynamic> toMap() => {
        "address": address,
        "country": country,
        "province": province,
        "city": city,
        "district": district,
        "postal_code": postalCode,
        "is_default": isDefault,
    };
}
