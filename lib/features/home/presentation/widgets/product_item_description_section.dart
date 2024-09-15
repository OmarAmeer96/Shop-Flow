import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/core/utils/spacing.dart';
import 'package:shop_flow/features/home/data/models/product.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_floating_button.dart';

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
            Row(
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
            ),
            verticalSpace(8),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber[600],
                  size: 24.0,
                ),
                horizontalSpace(4),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: product.rating!.rate!.toString(),
                        style: Styles.ratingFont,
                      ),
                      TextSpan(
                        text: ' (${product.rating!.count})',
                        style: Styles.ratingCountFont,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                ProductItemFloatingButton(
                  onPressed: () {},
                  backgroundColor: ColorsManager.primaryColor,
                  icon: Icons.add,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
