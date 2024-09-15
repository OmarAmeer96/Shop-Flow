import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_flow/core/di/dependency_injection.dart';
import 'package:shop_flow/core/routing/routes.dart';
import 'package:shop_flow/features/home/logic/home_cubit/home_cubit.dart';
import 'package:shop_flow/features/home/presentation/views/home_view.dart';
import 'package:shop_flow/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:shop_flow/features/splash/presentation/views/splash_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getAllProducts(),
            child: const HomeView(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
  }
}
