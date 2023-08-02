
import 'package:banana_challenge/models/get_products_model.dart';
import 'package:banana_challenge/pages/products_list/services.dart';
import 'package:banana_challenge/pages/products_list/widgets/product_list_item/product_list_item_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/products_provider/products_provider.dart';

// ignore: must_be_immutable
class ProductListItem extends StatelessWidget {
  
  Product product;
  ProductListItem({
    super.key,
    required this.product,  
  });
  

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<ProdcutsPovider>(context);

    return Padding(
      padding: ProductListItemStyles.buttonPadding,
      child: MaterialButton(
        elevation: ProductListItemStyles.buttonElevation,
        color: ProductListItemStyles.buttonBackgroundColor,
        padding: ProductListItemStyles.buttonPadding,
        onPressed:() {
          navegar(context, product);
        }, 
        child: SizedBox(

          width:ProductListItemStyles.buttonWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PriceAndTitle(title: product.title, price:product.price, marca: product.brand,),
              const Separador(),
              Description(description: product.description),
              const Separador(),
              Stock(stock: product.stock,),
              const Separador(),
              IconButton(
                onPressed: () {
                  productsProvider.addFavoritos(product.id);
                }, 
                icon:  
                product.favorite?
                Icon( Icons.star, size: 40, color: Colors.amber[400],)
                :Icon( Icons.star_border, size: 40, color: Colors.amber[400],),
              )
            ],
          ),
        ),
      ),
    );
  }
}



// ignore: must_be_immutable
class Stock extends StatelessWidget {

  int stock;

  Stock({
    required this.stock,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text('Stock: $stock', style: ProductListItemStyles.stockStyle,)
      ],
    );
  }
}



// ignore: must_be_immutable
class Description extends StatelessWidget {

  String description;

  Description({
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,

      child: Text(
          description,
          style:ProductListItemStyles.descriptionStyle,
          maxLines:2,
          overflow: TextOverflow.ellipsis,
          
          
        ),
    );
  }
}



class Separador extends StatelessWidget {
  const Separador({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: ProductListItemStyles.separadoresHeight,);
  }
}



// ignore: must_be_immutable
class PriceAndTitle extends StatelessWidget {


  String title;
  int price;
  String marca;
  
  PriceAndTitle({
    required this.title,
    required this.price,
    required this.marca,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: ProductListItemStyles.titleWidth(context),
              child: Text(
                title, 
                style: ProductListItemStyles.titleStyle, 
                overflow: TextOverflow.ellipsis
              )
              
            ),
            const SizedBox(height: 10),
            Text(marca, style: ProductListItemStyles.subTitleStyle,),
          ],
        ),
        Padding(
          padding: ProductListItemStyles.pricePadding,
          child: Text('USD$price', 
            style: ProductListItemStyles.priceStyle,
          )
        )

      ],
    );
  }
}