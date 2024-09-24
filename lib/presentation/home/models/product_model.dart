import '../../../core/core.dart';

class ProductModel {
  final String name;
  final String imageUrl;
  final int price;
  int quantity;

  ProductModel({
    required this.name,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
  });

  String get priceFormatted => price.currencyFormatRp;
}

final products = [
  ProductModel(
    name: 'Premium Hijab Pasmina',
    imageUrl:
        'https://asset-3.tstatic.net/jualbeli/img/2021/10/2389263/1-1065772244-Premium-Hijab-Pashmina-Beelove-Magelang.jpg',
    price: 35000,
  ),
  ProductModel(
    name: 'Pakaian wanita model terbaru',
    imageUrl:
        'https://s0.bukalapak.com/bukalapak-kontenz-production/content_attachments/44635/w-475/shutterstock_589577570.jpg',
    price: 155000,
  ),
  ProductModel(
    name: 'Premium Hijab Pasmina',
    imageUrl:
        'https://asset-3.tstatic.net/jualbeli/img/2021/10/2389263/1-1065772244-Premium-Hijab-Pashmina-Beelove-Magelang.jpg',
    price: 35000,
  ),
  ProductModel(
    name: 'Pakaian wanita model terbaru',
    imageUrl:
        'https://s0.bukalapak.com/bukalapak-kontenz-production/content_attachments/44635/w-475/shutterstock_589577570.jpg',
    price: 155000,
  ),
  ProductModel(
    name: 'Premium Hijab Pasmina',
    imageUrl:
        'https://asset-3.tstatic.net/jualbeli/img/2021/10/2389263/1-1065772244-Premium-Hijab-Pashmina-Beelove-Magelang.jpg',
    price: 35000,
  ),
  ProductModel(
    name: 'Pakaian wanita model terbaru',
    imageUrl:
        'https://s0.bukalapak.com/bukalapak-kontenz-production/content_attachments/44635/w-475/shutterstock_589577570.jpg',
    price: 155000,
  ),
  ProductModel(
    name: 'Hijab',
    imageUrl:
        'https://asset-3.tstatic.net/jualbeli/img/2021/10/2389263/1-1065772244-Premium-Hijab-Pashmina-Beelove-Magelang.jpg',
    price: 35000,
  ),
  ProductModel(
    name: 'Pakaian wanita model terbaru',
    imageUrl:
        'https://s0.bukalapak.com/bukalapak-kontenz-production/content_attachments/44635/w-475/shutterstock_589577570.jpg',
    price: 155000,
  ),
];
