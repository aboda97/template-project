/*


import 'package:standard_project/shared/apis/http_api/api_helper.dart';

class PutProductsApi {
  Future<yourClassModel> putProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    print('Prouduct id = $id');
    Map<String, dynamic> data =
    await Api().put(url:'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    return yourClassModel.fromJson(data);
  }
 }

*/
