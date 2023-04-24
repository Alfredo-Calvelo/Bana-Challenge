



import 'package:banana_challenge/models/get_products_model.dart';
import 'package:banana_challenge/providers/products_provider/services.dart';
import 'package:flutter/material.dart';

class ProdcutsPovider extends ChangeNotifier{

  List<Product> products = [];
  String busqueda = '';

  getProducts() async {
    products = await getProductsRequest();
    notifyListeners();
  }

  searchProducts() async {
    if (busqueda != '' ) {
      products= await searchProductsRequest(busqueda);
      notifyListeners();
    }
    else{
      products = await getProductsRequest();
      notifyListeners();
    }
  }

  void setParamBusqueda(String paramBusqueda){
    busqueda = paramBusqueda;
  }


}