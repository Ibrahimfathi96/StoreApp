
import '../api.dart';

class GetAllCategoriesService {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().getRequest(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
