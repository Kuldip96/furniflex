import 'package:furniflex/view/onboarding/onboarding_1.dart';
import 'package:furniflex/view/splash/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static String splashscreen = '/splash';
  static String onboarding1 = '/onboarding1';
}

final getPage = [
  GetPage(name: Routes.splashscreen, page: () => const SplashScreen()),
  GetPage(name: Routes.onboarding1, page: () => const OnBoarding1()),
];