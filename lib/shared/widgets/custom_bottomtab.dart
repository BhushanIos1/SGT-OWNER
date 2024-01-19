// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sgt_owner/style/colors.dart';

// ignore: must_be_immutable
class CustomBottomTabBar extends StatelessWidget implements PreferredSizeWidget {
 const CustomBottomTabBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.dashboard),label: 'Dashboard'
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.account_balance),label: 'Properties'
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.assignment_ind),label: 'Guards'
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.question_answer),label: 'Messages'
            // icon:Icon(Icons.forum),label: 'Messages'
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.menu),label: 'More'
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(63.0);
}
