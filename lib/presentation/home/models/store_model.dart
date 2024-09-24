class StoreModel {
  final String imageUrl;
  final String storeName;
  final String address;

  StoreModel({
    required this.imageUrl,
    required this.storeName,
    required this.address,
  });
}

final storeList = [
  StoreModel(
    imageUrl:
        'https://www.shutterstock.com/image-photo/customers-shopping-modern-clothing-store-260nw-2053746077.jpg',
    storeName: 'Ratu Butik',
    address: 'Jalan Kalimaya No. 34',
  ),
  StoreModel(
    imageUrl:
        'https://www.shutterstock.com/image-photo/shopping-kids-during-virus-outbreak-260nw-1677576121.jpg',
    storeName: 'Cwb Collection',
    address: 'Jalan Cendana No 23',
  ),
  StoreModel(
    imageUrl:
        'https://www.shutterstock.com/image-photo/modern-fashionable-brand-interior-clothing-260nw-1498332482.jpg',
    storeName: 'Sentra Fashion',
    address: 'Jalan Cipta Raya No. 16',
  ),
  StoreModel(
    imageUrl:
        'https://www.shutterstock.com/image-photo/hong-kong-circa-november-2016-260nw-541497730.jpg',
    storeName: 'Premis Store',
    address: 'Jalan Mawar No. 16',
  ),
];
