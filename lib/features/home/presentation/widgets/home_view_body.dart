import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/core/utils/extensions.dart';
import 'package:shop_flow/features/home/logic/home_cubit/home_cubit.dart';
import 'package:shop_flow/features/home/logic/home_cubit/home_state.dart';
import 'package:shop_flow/features/home/presentation/widgets/product_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return setUpLoading();
          },
          success: (specializationsResponseModel) {
            return setUpSuccess(specializationsResponseModel);
          },
          error: (errorHandler) => setUpError(context, errorHandler),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setUpSuccess(specializationsResponseModel) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 14.0,
        mainAxisSpacing: 14.0,
        childAspectRatio: 1 / 1.55,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return ProductItem(
          product: specializationsResponseModel[index],
        );
      },
    );
  }

  Widget setUpLoading() {
    return const Center(
      child: SizedBox(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setUpError(BuildContext context, String error) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          icon: const Icon(
            Icons.error,
            color: Colors.red,
            size: 32,
          ),
          content: Text(
            error,
            textAlign: TextAlign.center,
            style: Styles.font13GreyBold.copyWith(
              color: ColorsManager.primaryColor,
              fontSize: 15,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'Got it',
                style: Styles.font13GreyBold.copyWith(
                  color: ColorsManager.primaryColor,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      );
    });
    return const SizedBox.shrink();
  }
}
