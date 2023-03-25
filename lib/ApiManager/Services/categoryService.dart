import 'package:store_app/Models/ProductModel.dart';
import 'package:http/http.dart' as http;

import '../api.dart';

class CategoryService {
  Future<List<ProductMD>> getCategoryProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api().getRequest(url: 'https://fakestoreapi.com/products/category/$categoryName');
      List<ProductMD> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(
          ProductMD.fromJson(data[i]),
        );
      }
      return productList;

  }
}
