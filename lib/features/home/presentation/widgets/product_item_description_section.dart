import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/core/utils/spacing.dart';
import 'package:shop_flow/features/home/data/models/product.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_price_item.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_rating_item.dart';

class ProductItemDescriptionSection extends StatelessWidget {
  const ProductItemDescriptionSection({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(4),
            Text(
              product.title!,
              style: Styles.productItemTitle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(6),
            ProductPriceItem(product: product),
            verticalSpace(8),
            ProductRatingItem(product: product),
          ],
        ),
      ),
    );
  }
}
