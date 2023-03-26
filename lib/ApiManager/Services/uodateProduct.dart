import '../../Models/ProductModel.dart';
import '../api.dart';

class UpdateProductService{
  Future<ProductMD> updateProduct(
      {required String title,
        required String price,
        required String description,
        required String image,
        required int id,
        required String category}) async {
    print('id $id');
    Map<String, dynamic> data = await Api().putRequest(body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    }, url:'https://fakestoreapi.com/products/$id');

    return ProductMD.fromJson(data);
  }
}