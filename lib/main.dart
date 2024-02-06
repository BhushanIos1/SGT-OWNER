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

// import 'package:flutter/material.dart';

// void main() => runApp(new MyApp());

// const String page1 = "Page 1";
// const String page2 = "Page 2";
// const String page3 = "Page 3";
// const String title = "BNB Demo";

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  const MaterialApp(
//       title: title,
//       home:  MyHomePage(title: title),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key,required this.title});
//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//  late List<Widget> _pages;
//  late Widget _page1;
//  late Widget _page2;
//  late Widget _page3;

//   late int _currentIndex;
//   Widget? _currentPage;

//   @override
//   void initState() {
//     super.initState();

//     _page1 = Page1();
//     _page2 = Page2();
//     _page3 = Page3();

//     _pages = [_page1, _page2, _page3];

//     _currentIndex = 0;
//     _currentPage = _page1;
//   }

//   void changeTab(int index) {
//     setState(() {
//       _currentIndex = index;
//       _currentPage = _pages[index];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: _currentPage,
//       bottomNavigationBar: BottomNavigationBar(
//           onTap: (index) => changeTab(index),
//           currentIndex: _currentIndex,
//           items:  const[
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.dashboard,
//                 ),
//                 label: page1),
//             BottomNavigationBarItem(
//               icon: Icon(
//                   Icons.account_balance,
//                 ),
//                 label: page2),
//             BottomNavigationBarItem(
//               icon: Icon(
//                   Icons.assignment_ind,
//                 ),
//                 label: page3)
//           ]),
//       drawer:  Drawer(
//         child:  Container(
//           margin: EdgeInsets.only(top: 20.0),
//           child:  Column(
//             children: <Widget>[
//               navigationItemListTitle(page1, 0),
//               navigationItemListTitle(page2, 1),
//               navigationItemListTitle(page3, 2),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget navigationItemListTitle(String title, int index) {
//     return new ListTile(
//       title: new Text(
//         title,
//         style: new TextStyle(color: Colors.blue[400], fontSize: 22.0),
//       ),
//       onTap: () {
//         Navigator.pop(context);
//         changeTab(index);
//       },
//     );
//   }
// }

// class Page1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(page1),
//     );
//   }
// }

// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(page2),
//     );
//   }
// }

// class Page3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(page3),
//     );
//   }
// }