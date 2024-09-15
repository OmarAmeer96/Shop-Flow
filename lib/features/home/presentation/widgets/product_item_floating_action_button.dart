import 'package:flutter/material.dart';

class ProductItemFloatingActionButton extends StatelessWidget {
  const ProductItemFloatingActionButton({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
  });

  final Color? backgroundColor;
  final Color? iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      elevation: 3,
      onPressed: () {},
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(500.0),
      ),
      child: Icon(
        icon,
        size: 24.0,
        color: iconColor,
      ),
    );
  }
}
