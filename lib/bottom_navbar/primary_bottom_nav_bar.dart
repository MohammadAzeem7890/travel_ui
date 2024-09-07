import 'package:flutter/material.dart';
import 'package:travel_app_ui/bottom_navbar/controller/bottom_nav_controller.dart';
import 'package:travel_app_ui/bottom_navbar/widgets/add_post_dialogue.dart';
import 'package:travel_app_ui/bottom_navbar/widgets/bottom_nav_center_button.dart';
import 'package:travel_app_ui/bottom_navbar/widgets/bottom_nav_icon.dart';
import 'package:travel_app_ui/posts/posts_screen.dart';
import 'package:travel_app_ui/search_result/search_result_screen.dart';

import '../home/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final BottomNavController _navController = BottomNavController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: BottomNavCenterButton(
          onTap: () => _navController.showDialogue(context),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black54,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: _navController.navBarsItems(),
          currentIndex: _navController.selectedIndex,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 5,
          enableFeedback: false,
          showUnselectedLabels: true,
          onTap: (index) {
            if (index != 2) {
              _navController.onItemTapped(index);
              setState(() {});
            }
          },
        ),
        body: IndexedStack(
          index: _navController.selectedIndex,
          children: _navController.screens,
        ),
      ),
    );
  }
}
