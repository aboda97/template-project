/*

import 'package:standard_project/shared/apis/http_api/api_helper.dart';

class AllCategoriesApi {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

      List<yourClassModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(
          yourClassModel.fromJson(data[i]),
        );
      }
      return productList;
  }
}

*/
