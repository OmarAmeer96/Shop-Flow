import 'package:flutter/material.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14.0,
        mainAxisSpacing: 14.0,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return ProductItem(
          index: index,
        );
      },
    );
  }
}
