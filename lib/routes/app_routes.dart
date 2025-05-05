import 'package:flutter/material.dart';
import 'package:recipe_cart/screens/enter_number_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/signin_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const signin = '/signin';
  static const enterNumber = '/enter-number';

  static final routes = {
    splash: (context) => SplashScreen(),
    onboarding: (context) => OnboardingScreen(),
    signin: (context) => SignInScreen(),
    enterNumber: (context) => EnterNumberScreen(),
  };
}
