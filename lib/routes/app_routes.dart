import 'package:flutter/material.dart';
import 'package:recipe_cart/screens/account_screen.dart';
import 'package:recipe_cart/screens/enter_number_screen.dart';
import 'package:recipe_cart/screens/explore_screen.dart';
import 'package:recipe_cart/screens/favorites_screen.dart';
import 'package:recipe_cart/screens/home_screen.dart';
import 'package:recipe_cart/screens/login_screen.dart';
import 'package:recipe_cart/screens/my_cart_screen.dart';
import 'package:recipe_cart/screens/order_placed_screen.dart';
import 'package:recipe_cart/screens/otp_verification_screen.dart';
import 'package:recipe_cart/screens/product_details_screen.dart';
import 'package:recipe_cart/screens/product_list_screen.dart';
import 'package:recipe_cart/screens/recipe_details_screen.dart';
import 'package:recipe_cart/screens/signup_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/signin_screen.dart';

class AppRoutes {
  static const splash = '/';
  static const onboarding = '/onboarding';
  static const signin = '/signin';
  static const enterNumber = '/enter-number';
  static const otpVerification = '/otp-verification';
  static const login = '/login';
  static const signup = '/signup';
  static const home = '/home';
  static const explore = '/explore';
  static const productList = '/product-list';
  static const productDetails = '/product-details';
  static const recipeDetails = '/recipe-details';
  static const account = '/account';
  static const myCart = '/my-cart';
  static const favorites = '/favorites';
  static const orderPlaced = '/order-placed';

  static final routes = {
    splash: (context) => SplashScreen(),
    onboarding: (context) => OnboardingScreen(),
    signin: (context) => SignInScreen(),
    enterNumber: (context) => EnterNumberScreen(),
    otpVerification: (context) => OtpVerificationScreen(),
    login: (context) => LoginScreen(),
    signup: (context) => SignUpScreen(),
    home: (context) => HomeScreen(),
    explore: (context) => ExploreScreen(),
    productList: (context) => ProductListScreen(),
    productDetails: (context) => ProductDetailsScreen(),
    recipeDetails: (context) => RecipeDetailsScreen(),
    account: (context) => AccountScreen(),
    myCart: (context) => MyCartScreen(),
    favorites: (context) => FavoritesScreen(),
    orderPlaced: (context) => OrderPlacedScreen(),
  };
}
