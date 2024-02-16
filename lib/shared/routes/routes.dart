// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:sgt_owner/feature/More/checkpoint_screen/checkpoint_detail_screen.dart';
import 'package:sgt_owner/feature/More/checkpoint_screen/checkpoint_history_screen.dart';
import 'package:sgt_owner/feature/More/checkpoint_screen/checkpoint_listing_screen.dart';
import 'package:sgt_owner/feature/More/checkpoint_screen/edit_checkpoint_and_task/views/edit_checkpoint_and_task_screen.dart';
import 'package:sgt_owner/feature/More/manage_leaves_screen/leaves_listing_screen.dart';
import 'package:sgt_owner/feature/More/route_screen/route_detail_screen.dart';
import 'package:sgt_owner/feature/More/route_screen/route_listings_screen.dart';
import 'package:sgt_owner/feature/More/shifts_screen/edit_shift/views/edit_shift_screen.dart';
import 'package:sgt_owner/feature/More/shifts_screen/shift_detail_screen.dart';
import 'package:sgt_owner/feature/More/shifts_screen/shift_list_screen.dart';
import 'package:sgt_owner/feature/More/staff_screen/add_staff/views/add_staff.dart';
import 'package:sgt_owner/feature/More/staff_screen/staff_profile/views/edit_staff_profile.dart';
import 'package:sgt_owner/feature/More/staff_screen/staff_profile/views/staff_profile.dart';
import 'package:sgt_owner/feature/More/staff_screen/staff_screen.dart';
import 'package:sgt_owner/feature/Properties/assign_guard/views/assign_guard.dart';
import 'package:sgt_owner/feature/Properties/checkpoint/views/create_checkpoints.dart';
import 'package:sgt_owner/feature/Properties/job_assigned_popup.dart';
import 'package:sgt_owner/feature/Properties/add_new_property_screen.dart';
import 'package:sgt_owner/feature/Properties/manage_property/views/manage_property.dart';
import 'package:sgt_owner/feature/Properties/property_creation/views/property_creation.dart';
import 'package:sgt_owner/feature/Properties/property_view_carousal.dart';
import 'package:sgt_owner/feature/Properties/route/views/create_route.dart';
import 'package:sgt_owner/feature/Properties/shift/views/create_shift.dart';
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
import 'package:sgt_owner/feature/home_tabs_screen.dart';
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
    GetPage(name:"/assign_guard", page: () => AssignGuardPage()),
    GetPage(name:"/job_assigned_popup", page: () => JobAssignedPopup()),
    GetPage(name:"/manage_property_screen", page: () => ManagePropertyScreen()),
    GetPage(name: "/dashboard", page:()=> HomeTabsScreens()),
    GetPage(name: "/shift_screen", page:() => ShiftListingScreen()),
    GetPage(name: "/shift_detail", page:() => ShiftDetailScreen()),
    GetPage(name: "/edit_shift", page:() => EditShiftScreen()),
    GetPage(name: "/staff_screen", page:() => StaffScreen()),
    GetPage(name: "/add_staff", page:() => AddStaffPage()),
    GetPage(name: "/staff_profile", page:() => StaffProfile()),
    GetPage(name: "/edit_staff", page:() => EditStaffProfile()),
    GetPage(name: "/checkpoint_listing_screen", page:() => CheckpointListingScreen()),
    GetPage(name: "/checkpoint_detail_screen", page:() => CheckpointDetailScreen()),
    GetPage(name: "/checkpoint_history_screen", page:() => CheckpointHistoryScreen()),
    GetPage(name: "/edit_checkpoint_and_task", page:() => EditCheckpointAndTaskScreen()),
    GetPage(name: "/route_listing_screen", page:() => RouteListingScreen()),
    GetPage(name: "/route_detail_screen", page:() => RouteDetailScreen()),
    GetPage(name: "/leave_listing_screen", page:() => LeaveListingScreen()),
  ];
}
