import 'ProductRatingModel.dart';

class ProductMD {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final ProductRatingMD productRatingMD;
  ProductMD({
      required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.productRatingMD
  });

  factory ProductMD.fromJson(jsonData) {
    return ProductMD(
      id: int.parse(jsonData["id"]),
      title: jsonData["title"],
      price: double.parse(jsonData["price"]),
      description: jsonData["description"],
      category: jsonData["category"],
      image: jsonData["image"],
      productRatingMD: ProductRatingMD.fromJson(jsonData["rating"])
    );
  }
}
