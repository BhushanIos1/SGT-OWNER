// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgt_owner/bindings/network_binding.dart';
import 'package:sgt_owner/shared/routes/routes.dart';
import 'package:sgt_owner/views/splash_screen.dart';
import 'package:sgt_owner/style/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(const MyApp());
  configLoading();
  DependencyInjection.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SGT Owner',
        theme: ThemeData(primarySwatch: AppColors.kThemeColor),
        initialRoute: "/",
        defaultTransition: Transition.cupertino,
        getPages: RouteClass.routes,
        home: SplashScreen(),
        builder: EasyLoading.init(),
      ),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.dark
    ..textStyle = GoogleFonts.inter(color: Colors.white)
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..userInteractions = false
    ..dismissOnTap = false;
}