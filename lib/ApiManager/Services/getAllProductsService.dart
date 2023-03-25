

import '../../Models/ProductModel.dart';
import '../api.dart';

class GetAllProductsService {
  Future<List<ProductMD>> getAllProducts() async {
    List<dynamic> data =
        await Api().getRequest(url: 'https://fakestoreapi.com/products');

    List<ProductMD> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductMD.fromJson(data[i]),
      );
    }
    return productList;
  }
}
