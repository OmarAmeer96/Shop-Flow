import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Products'),
        backgroundColor: ColorsManager.primaryColor,
        titleTextStyle: Styles.appBarTitle,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: HomeViewBody(),
        ),
      ),
    );
  }
}
