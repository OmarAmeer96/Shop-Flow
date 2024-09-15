import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_flow/core/routing/routes.dart';
import 'package:shop_flow/core/theming/colors_manager.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/core/utils/assets.dart';
import 'package:shop_flow/core/utils/extensions.dart';
import 'package:shop_flow/core/utils/responsive.dart';
import 'package:shop_flow/features/onboarding/presentation/views/widgets/onboarding_view_widget.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Started',
      onFinish: () {
        context.pushReplacementNamed(Routes.homeView);
      },
      finishButtonTextStyle: Styles.onboardingTitleFont.copyWith(
        color: Colors.white,
        fontSize: 15.sp,
      ),
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: ColorsManager.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      skipTextButton: Text(
        'Skip',
        style: Styles.onboardingTitleFont.copyWith(
          color: ColorsManager.primaryColor,
          fontSize: 13.sp,
        ),
      ),
      controllerColor: const Color(0xff1D272F),
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          AssetsData.onboarding1,
          width: Responsive.screenWidth(context),
          height: Responsive.screenHeight(context) * 0.5,
        ),
        Image.asset(
          AssetsData.onboarding2,
          width: Responsive.screenWidth(context),
          height: Responsive.screenHeight(context) * 0.5,
        ),
        Image.asset(
          AssetsData.onboarding3,
          width: Responsive.screenWidth(context),
          height: Responsive.screenHeight(context) * 0.5,
        ),
      ],
      speed: 1.8,
      pageBodies: const [
        OnboardingViewWidget(
          title: 'Find What You Need, Fast',
          subTitle:
              "Search through thousands of products from your favorite brands and local stores. Filter by category, price, and more to find exactly what you're looking for.",
        ),
        OnboardingViewWidget(
          title: 'Shop with Ease',
          subTitle:
              "Add items to your cart, checkout securely, and track your order every step of the way. Enjoy hassle-free shopping with our user-friendly interface.",
        ),
        OnboardingViewWidget(
          title: 'Get It Delivered, Right to Your Door',
          subTitle:
              "Choose your preferred delivery method and time slot. Relax and wait for your items to arrive at your doorstep, delivered safely and on time.",
        ),
      ],
    );
  }
}
