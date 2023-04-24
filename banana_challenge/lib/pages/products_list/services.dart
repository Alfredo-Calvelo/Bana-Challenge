



import 'package:banana_challenge/pages/products_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../models/get_products_model.dart';

List mapearProductos(List<Product>? productsParam, String busqueda){

  List<ProductListItem> products = [];

  if (productsParam != null) {
    
  // ignore: avoid_function_literals_in_foreach_calls
    productsParam.forEach((product) {
      products.add(
        ProductListItem(product: product)
      );
    });
  }
  if (products.isNotEmpty) {
    return products; 
  }
  else{
    return[
      ErrorText(busqueda: busqueda,)

    ];
  }
}

void navegar(BuildContext context, Product producto ){

  Navigator.pushNamed(context, 'product_detail',arguments: producto);

}

