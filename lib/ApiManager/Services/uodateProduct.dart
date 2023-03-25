import '../../Models/ProductModel.dart';
import '../api.dart';

class UpdateProduct{
  Future<ProductMD> updateProduct(
      {required String title,
        required String price,
        required String description,
        required String image,
        required String category}) async {
    Map<String, dynamic> data = await Api().postRequest(body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    }, url: 'https://fakestoreapi.com/products');

    return ProductMD.fromJson(data);
  }
}