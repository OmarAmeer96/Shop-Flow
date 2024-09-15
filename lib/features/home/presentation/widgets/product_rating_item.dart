import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/core/utils/spacing.dart';
import 'package:shop_flow/features/home/data/models/product.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_floating_button.dart';

class ProductRatingItem extends StatelessWidget {
  const ProductRatingItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
