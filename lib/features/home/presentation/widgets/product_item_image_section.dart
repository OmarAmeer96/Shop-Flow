import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/features/home/data/models/product.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_floating_button.dart';

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
            child: CachedNetworkImage(
              imageUrl: widget.product.image!,
              fit: BoxFit.contain,
              width: double.infinity,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
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
