
class Product {
  final String imageUrl, productName, location;
  final int productId, status;

  Product(
      {required this.productName,
      required this.location,
      required this.productId,
      required this.status,
      required this.imageUrl});
}
