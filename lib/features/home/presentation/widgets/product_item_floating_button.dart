import 'package:flutter/material.dart';

class ProductItemFloatingButton extends StatelessWidget {
  const ProductItemFloatingButton({
    super.key,
    this.size = 38,
    required this.backgroundColor,
    required this.icon,
    required this.iconColor,
  });

  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Material(
        color: backgroundColor,
        shape: const CircleBorder(),
        elevation: 2,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
