
import 'package:flutter/widgets.dart';
import 'package:myshoppingapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:myshoppingapp/screens/home/home_screen.dart';

import 'package:myshoppingapp/screens/splash/sign_in/sign_in_screen.dart';
import 'package:myshoppingapp/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
 ForgotPasswordScreen.routeName:(context) => ForgotPasswordScreen(),
};

