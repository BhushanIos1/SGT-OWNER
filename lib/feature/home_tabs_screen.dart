import 'package:flutter/material.dart';
import 'package:sgt_owner/feature/More/more.dart';
import 'package:sgt_owner/feature/Properties/add_new_property_screen.dart';
import 'package:sgt_owner/shared/widgets/custom_appbar.dart';
import 'package:sgt_owner/style/colors.dart';

const String page1 = "Dashboard";
const String page2 = "Properties";
const String page3 = "Guards";
const String page4 = "Messages";
const String page5 = "more";
// const String title = "BNB Demo";

class HomeTabsScreens extends StatefulWidget {
  const HomeTabsScreens({
    super.key,
    //  required this.title
  });
  // final String title;

  @override
  State<HomeTabsScreens> createState() => _HomeTabsScreensState();
}

class _HomeTabsScreensState extends State<HomeTabsScreens> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late Widget _page4;
  late Widget _page5;

  late int _currentIndex;
  Widget? _currentPage;

  @override
  void initState() {
    super.initState();

    _page1 = const Page1();
    _page2 = const Page2();
    _page3 = const Page3();
    _page4 = const Page4();
    _page5 = const Page5();

    _pages = [_page1, _page2, _page3, _page4, _page5];

    _currentIndex = 0;
    _currentPage = _page1;
  }

  void changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: _currentIndex == 0 ? 'Dashboard': _currentIndex == 1 ? 'Properties' : _currentIndex == 2
                    ? 'Guards' : _currentIndex == 3  ? 'Messages' : _currentIndex == 4 ? 'More' : '',
        isLeading: true,
      ),
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: AppColors.secondaryColor,
          selectedItemColor: AppColors.primaryColor,
          backgroundColor: AppColors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => changeTab(index),
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.dashboard,
                ),
                label: 'Dashboard'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance,
                ),
                label: 'Properties'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.assignment_ind,
                ),
                label: 'Guards'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.question_answer,
                ),
                label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                ),
                label: 'More'),
          ]),
      // drawer:  Drawer(
      //   child:  Container(
      //     margin: EdgeInsets.only(top: 20.0),
      //     child:  Column(
      //       children: <Widget>[
      //         navigationItemListTitle(page1, 0),
      //         navigationItemListTitle(page2, 1),
      //         navigationItemListTitle(page3, 2),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  // Widget navigationItemListTitle(String title, int index) {
  //   return new ListTile(
  //     title: new Text(
  //       title,
  //       style: new TextStyle(color: Colors.blue[400], fontSize: 22.0),
  //     ),
  //     onTap: () {
  //       Navigator.pop(context);
  //       changeTab(index);
  //     },
  //   );
  // }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(page1),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AddNewPropertyScreen(),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(page3),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(page4),
    );
  }
}

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: MoreTabScreen(),
    );
  }
}
