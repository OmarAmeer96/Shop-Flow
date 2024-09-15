import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              'Item $index',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}
