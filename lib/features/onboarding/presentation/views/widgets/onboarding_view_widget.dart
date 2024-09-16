import 'package:flutter/material.dart';
import 'package:shop_flow/core/theming/styles.dart';
import 'package:shop_flow/core/utils/responsive.dart';

class OnboardingViewWidget extends StatelessWidget {
  const OnboardingViewWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: Responsive.screenWidth(context),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Responsive.screenHeight(context) * 0.58,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.onboardingTitleFont,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: Styles.onboardingContentFont,
          ),
        ],
      ),
    );
  }
}
