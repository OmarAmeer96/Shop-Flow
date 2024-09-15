import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/features/home/data/models/product.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_floating_button.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_image_widget.dart';

class ProductItemImageSection extends StatefulWidget {
  const ProductItemImageSection({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductItemImageSection> createState() =>
      _ProductItemImageSectionState();
}

class _ProductItemImageSectionState extends State<ProductItemImageSection> {
  bool isFavorited = false;

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
            child: ProductItemImageWidget(widget: widget),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: ProductItemFloatingButton(
              onPressed: () {
                setState(() {
                  isFavorited = !isFavorited;
                });
              },
              backgroundColor: Colors.white,
              icon:
                  isFavorited ? Icons.favorite : Icons.favorite_border_outlined,
              iconColor: ColorsManager.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
