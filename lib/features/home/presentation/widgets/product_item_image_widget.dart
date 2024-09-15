import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_flow/core/utils/loaading_animation.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item_image_section.dart';

class ProductItemImageWidget extends StatelessWidget {
  const ProductItemImageWidget({
    super.key,
    required this.widget,
  });

  final ProductItemImageSection widget;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: widget.product.image!,
      fit: BoxFit.contain,
      width: double.infinity,
      placeholder: (context, url) => const Center(
        child: LoadingAnimation(),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
