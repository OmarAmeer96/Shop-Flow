import 'package:flutter/material.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_description_section.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_image_section.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductItemImageSection(),
          ProductItemDescriptionSection(),
        ],
      ),
    );
  }
}
