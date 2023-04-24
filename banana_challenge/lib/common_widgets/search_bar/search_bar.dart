import 'package:banana_challenge/common_widgets/search_bar/search_bar_styles.dart';
import 'package:banana_challenge/providers/products_provider/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class SearchBar extends StatelessWidget {

  const SearchBar({
    super.key, 
  });


  
  
  @override
  Widget build(BuildContext context) {

    final productsProvider = Provider.of<ProdcutsPovider>(context, listen: false);
    

    return Center(
      child: SizedBox(
        width: SearchBarStyles.inputWidth(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: SearchBarStyles.textFormWidth(context),
              child: TextFormField(
                autofocus: false,
                decoration: const InputDecoration(label: Text('Buscar producto')),
                onFieldSubmitted: (value) {
                  
                  productsProvider.searchProducts();
                },
                
                onChanged: (value) {
                  productsProvider.setParamBusqueda(value);
                },
              ),
            ),
            const SearchAndResetButton()

          ]
        ),
      ),
    );

  }



}

class SearchAndResetButton extends StatelessWidget {
  const SearchAndResetButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final productsProvider = Provider.of<ProdcutsPovider>(context);
    
    return IconButton(
      icon:  Icon(productsProvider.products.isNotEmpty? Icons.search : Icons.replay_outlined, size: 40,),
      onPressed: () {
        productsProvider.searchProducts();
      },
    );
  }
}