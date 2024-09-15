import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/features/home/data/models/product.dart';

class ProductPriceItem extends StatelessWidget {
  const ProductPriceItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'EGP ${product.price}',
          style: Styles.productNewPriceFont,
        ),
        Text(
          '${(product.price! * 1.2).toStringAsFixed(2)} EGP',
          style: Styles.productOldPriceFont,
        ),
      ],
    );
  }
}
