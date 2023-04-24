

import 'package:banana_challenge/pages/product_detail/product_detail_styles.dart';
import 'package:banana_challenge/pages/product_detail/widgets/imagesList/images_list.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/custom_button/custom_button.dart';
import '../../common_widgets/widgets.dart';
import '../../models/get_products_model.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {

    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    void displayDialog(BuildContext context){

      showDialog(
        barrierDismissible: true,
        context: context, 
        builder: (context) {
          return const AlertDialog(
             elevation: 5,
             title: Text("Elemento agregado al Carrito con éxito"),
          );
        },
      );

    }

    return Scaffold(
      appBar: CustomAppBar(title: product.title),
      body:  Center(
        child: SizedBox(
          width: ProductDetailStyles.width(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Column(
                children: [
                  ImagesList(product: product),
                  SizedBox(
                    width: ProductDetailStyles.width(context),
                    child: Text(product.description, style: ProductDetailStyles.descriptionStyle)
                  ),
                  const SizedBox(height: 100),
                  SizedBox(
                    width: ProductDetailStyles.width(context),
                    child: Text('USD${product.price}', style: ProductDetailStyles.priceStyle,)
                  ),

                ],
              ),
              Column(
                children: [
                  CustomButton(callback: displayDialog, label: 'Agregar al carrito',),
                  const SizedBox(height: 10,)
                ],
              )

            ]
          ),
        ),
      ),
    );
  }
}




