// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:sgt_owner/feature/authentication/email_verification/views/email_verification.dart';
import 'package:sgt_owner/feature/authentication/new_password/views/new_password.dart';
import 'package:sgt_owner/feature/authentication/resetPassword/views/reset_password_screen.dart';
import 'package:sgt_owner/feature/authentication/signup/views/signup_screen.dart';
import 'package:sgt_owner/views/get_started_screen.dart';
import 'package:sgt_owner/feature/authentication/login/views/login.dart';
import 'package:sgt_owner/views/splash_screen.dart';

class RouteClass {
  static List<GetPage> routes = [
    GetPage(name: "/", page: () => SplashScreen()),
    GetPage(name: "/getStart", page: () => GetStartedScreen()),
    GetPage(name: "/login", page: () => LoginPage()),
    GetPage(name: "/reset", page: () => ResetPasswordPage()),
    GetPage(name: "/email_verification", page: () => EmailVerificationPage()),
    GetPage(name: "/new_password", page: () => NewPassword()),
    GetPage(name: "/signup", page: () => SignUpPage()),
  ];
}
