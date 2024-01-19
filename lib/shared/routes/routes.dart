// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:sgt_owner/feature/Property/checkpoint/views/create_checkpoints.dart';
import 'package:sgt_owner/feature/Property/property_creation/views/add_new_property_screen.dart';
import 'package:sgt_owner/feature/Property/property_creation/views/property_creation.dart';
import 'package:sgt_owner/feature/Property/property_view_carousal.dart';
import 'package:sgt_owner/feature/Property/route/views/create_route.dart';
import 'package:sgt_owner/feature/Property/shift/views/create_shift.dart';
import 'package:sgt_owner/feature/authentication/company_details/views/company_details_screen.dart';
import 'package:sgt_owner/feature/authentication/email_verification/views/email_verification.dart';
import 'package:sgt_owner/feature/authentication/new_password/views/new_password.dart';
import 'package:sgt_owner/feature/authentication/payment/views/apply_coupon_screen.dart';
import 'package:sgt_owner/feature/authentication/payment/views/billing_address_screen.dart';
import 'package:sgt_owner/feature/authentication/payment/views/coupon_applied_popup.dart';
import 'package:sgt_owner/feature/authentication/payment/views/oops_coupon_popup.dart';
import 'package:sgt_owner/feature/authentication/payment/views/payment_screen.dart';
import 'package:sgt_owner/feature/authentication/payment/views/select_plan_screen.dart';
import 'package:sgt_owner/feature/authentication/resetPassword/views/reset_password_screen.dart';
import 'package:sgt_owner/feature/authentication/signup/views/signup_screen.dart';
import 'package:sgt_owner/views/get_started_screen.dart';
import 'package:sgt_owner/feature/authentication/login/views/login.dart';
import 'package:sgt_owner/views/splash_screen.dart';
import 'package:sgt_owner/views/welcome_screen.dart';

class RouteClass {
  static List<GetPage> routes = [
    GetPage(name: "/", page: () => SplashScreen()),
    GetPage(name: "/getStart", page: () => GetStartedScreen()),
    GetPage(name: "/welcome", page: () => WelcomeScreen()),
    GetPage(name: "/login", page: () => LoginPage()),
    GetPage(name: "/reset", page: () => ResetPasswordPage()),
    GetPage(name: "/email_verification", page: () => EmailVerificationPage()),
    GetPage(name: "/new_password", page: () => NewPassword()),
    GetPage(name: "/signup", page: () => SignUpPage()),
    GetPage(name: "/company_details", page: () => CompanyDetailsPage()),
    GetPage(name: "/select_plan", page: () => SelectedPlanPage()),
    GetPage(name: "/billing_address", page: () => BillingAddressPage()),
    GetPage(name: "/payment_details", page: () => PaymentDetailsPage()),
    GetPage(name: "/apply_coupon", page: () => ApplyCouponPage()),
    GetPage(name: "/oops_coupon_popUp", page: () => OopsPopupDialog()),
    GetPage(name: "/coupon_applied_popup", page: () => CouponAppliedDialog()),
    GetPage(name: "/add_new_property_screen", page: () => AddNewPropertyScreen()),
    GetPage(name: "/property_creation", page: () => PropertyCreationPage()),
    GetPage(name: "/property_carousal", page: () => PropertyCarousal()),
    GetPage(name:"/create_shift", page: () => CreateShiftPage()),
    GetPage(name:"/create_checkpoint", page: () => CreateCheckPointPage()),
    GetPage(name:"/create_route", page: () => CreateRoutePage()),
  ];
}
