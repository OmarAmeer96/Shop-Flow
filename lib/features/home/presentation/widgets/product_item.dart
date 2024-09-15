import 'package:flutter/material.dart';

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
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Center(
        child: Text(
          'Item $index',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
