import 'package:banana_challenge/common_widgets/search_bar/search_bar.dart';
import 'package:banana_challenge/pages/products_list/services.dart';
import 'package:banana_challenge/providers/products_provider/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter/';

import '../../common_widgets/widgets.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: CustomAppBar( title : 'Flutter Challenge 2023' ),
      body: 

      SingleChildScrollView(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  const[
              SizedBox(height: 20),
              SearchBar(),
              SizedBox(height: 20),
              _ProductsList(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductsList extends StatelessWidget {
  const _ProductsList();


  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProdcutsPovider>(context);
    return Column(children: [
      ...mapearProductos(productsProvider.products, productsProvider.busqueda),
    ],);
  }
}