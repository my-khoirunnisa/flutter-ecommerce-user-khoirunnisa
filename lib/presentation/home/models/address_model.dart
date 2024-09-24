class AddressModel {
  final String name;
  final String country;
  final String province;
  final String city;
  final String subdistrict;
  final String address;
  final int zipCode;
  final String phoneNumber;

  AddressModel({
    required this.name,
    required this.country,
    required this.province,
    required this.city,
    required this.subdistrict,
    required this.address,
    required this.zipCode,
    required this.phoneNumber,
  });

  String get fullAddress =>
      '$address - $subdistrict - $city - $province - $country. Zip Code $zipCode';
}

final addresses = [
  AddressModel(
    country: 'Indonesia',
    name: 'Fauzan Abdillah',
    subdistrict: 'Mampang Prapatan',
    city: 'Jakarta Selatan',
    province: 'DKI Jakarta',
    zipCode: 12345,
    phoneNumber: '08123456789',
    address: 'Jl. lurus',
  ),
  AddressModel(
    country: 'Indonesia',
    name: 'Fauzan',
    subdistrict: 'Mampang Prapatan',
    city: 'Bandung',
    province: 'Jawa Barat',
    zipCode: 67890,
    phoneNumber: '08987654321',
    address: 'Jl. lurus',
  ),
];
