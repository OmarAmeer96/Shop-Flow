import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
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
            const Text(
              'Nike Air for sport..sssssssssssssssssssssssssssssssssss.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xff1d185f),
              ),
            ),
            verticalSpace(6),
            const Row(
              children: [
                Text(
                  'EGP 1,200',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  '2,000 EGP',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            verticalSpace(8),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber[600],
                  size: 22.0,
                ),
                const SizedBox(width: 4),
                const Text(
                  '4.6',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                const Spacer(),
                const ProductItemFloatingButton(
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
