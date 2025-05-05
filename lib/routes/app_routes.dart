import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/signin_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const signin = '/signin';

  static final routes = {
    splash: (context) => SplashScreen(),
    onboarding: (context) => OnboardingScreen(),
    signin: (context) => SignInScreen(),
  };
}
