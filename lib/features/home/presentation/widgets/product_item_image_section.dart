import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_floating_button.dart';

class ProductItemImageSection extends StatelessWidget {
  const ProductItemImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: Image.network(
              'https://via.placeholder.com/150',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const Positioned(
            top: 8,
            right: 8,
            child: ProductItemFloatingButton(
              backgroundColor: Colors.white,
              icon: Icons.favorite_border_outlined,
              iconColor: ColorsManager.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
