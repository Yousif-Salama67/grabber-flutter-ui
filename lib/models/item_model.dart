class ItemModel {
  final String image;
  final String name;
  final String? rate;
  final String? price;
  const ItemModel({
    required this.image,
    required this.name,
    this.rate,
    this.price
  });
}
