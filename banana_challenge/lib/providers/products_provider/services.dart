import 'package:banana_challenge/models/get_products_model.dart';
import 'package:http/http.dart' as http;




Future<List<Product>> getProductsRequest() async {
  Uri url = Uri.parse('https://dummyjson.com/products');
  http.Response response = await http.get(url);

  List<Product> products = GetProductsResponse.fromRawJson(response.body).products;
  return products;
}

Future<List<Product>> searchProductsRequest(String paramBusqueda) async {
  Uri url = Uri.parse('https://dummyjson.com/products/search?q=$paramBusqueda');
  http.Response response = await http.get(url);

  List<Product> products = GetProductsResponse.fromRawJson(response.body).products;
  return products;
}




