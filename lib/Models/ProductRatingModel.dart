import 'package:http/http.dart' as http;

class ProductRatingMD{
  final double rate;
  final double count;

  ProductRatingMD({required this.rate, required this.count});

  factory ProductRatingMD.fromJson(jsonData) {
    return ProductRatingMD(
      rate: double.parse(jsonData["rate"].toString()),
      count: double.parse(jsonData["count"].toString()),
    );
  }
}

