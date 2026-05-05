class ProductModel {
  final String productName;
  final String type;
  final int price;
  int quantity;

  ProductModel({
    required this.productName,
    required this.type,
    required this.price,
    required this.quantity,
  });
  
}

final product = [
  ProductModel(
    productName: 'Tiket Wisata 1',
    type: 'Tiket',
    price: 500000,
    quantity: 2,
  ),
  ProductModel(
    productName: 'Tiket Wisata 2',
    type: 'Tiket',
    price: 500000,
    quantity: 2,
  ),
  ProductModel(
    productName: 'Tiket Wisata 3',
    type: 'Tiket',
    price: 500000,
    quantity: 2,
  ),
  ProductModel(
    productName: 'Tiket Wisata 4',
    type: 'Tiket',
    price: 500000,
    quantity: 2,
  ),
];