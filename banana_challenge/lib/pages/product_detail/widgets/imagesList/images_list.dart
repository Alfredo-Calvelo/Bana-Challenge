


import 'package:banana_challenge/pages/product_detail/widgets/imagesList/images_list_styles.dart';
import 'package:flutter/material.dart';

import '../../../../models/get_products_model.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ImagesListStyles.imageHeight(context),
      child: ListView.builder(
        itemCount: product.images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: ImagesListStyles.imageWidth(context), 
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: FadeInImage(
                fit: BoxFit.cover,          
                placeholder: const AssetImage('assets/images/no-image.jpg'), 
                image: NetworkImage(product.images[index])
              ),
            ),
          );
        },
      ),
    );
  }
}