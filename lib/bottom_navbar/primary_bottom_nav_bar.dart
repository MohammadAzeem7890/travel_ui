import 'package:flutter/material.dart';
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
  int _selectedIndex = 0;

  Color getItemColor(index) {
    return _selectedIndex == index ? Colors.black : Colors.black54;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: BottomNavCenterButton(
          onTap: () {
            showDialog(
                barrierDismissible: true,
                barrierColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return const AddPostDialogue();
                });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black54,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: navBarsItems(),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 5,
          showUnselectedLabels: true,
          onTap: (index) {
            if (index != 2) {
              setState(() {
                _onItemTapped(index);
              });
            }
          },
        ),
        body: screens.elementAt(_selectedIndex),
      ),
    );
  }

  List<Widget> screens = const [
    HomeScreen(),
    PostsScreen(),
    SearchResultScreen(),
    SearchResultScreen(),
    PostsScreen(),
  ];

  List<BottomNavigationBarItem> navBarsItems() {
    return [
      BottomNavigationBarItem(
        icon: BottomNavIcon(
          Icons.home_outlined,
          color: getItemColor(0),
        ),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: BottomNavIcon(
          Icons.cached_sharp,
          color: getItemColor(1),
        ),
        label: 'Share',
      ),
      const BottomNavigationBarItem(
        icon: Visibility(
          visible: false, // Hide the icon in the center position
          child: Icon(Icons.phone),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: BottomNavIcon(
          Icons.local_offer_outlined,
          color: getItemColor(3),
        ),
        label: 'Promotions',
      ),
      BottomNavigationBarItem(
        icon: BottomNavIcon(
          Icons.person_pin,
          color: getItemColor(4),
        ),
        label: 'Profile',
      ),
    ];
  }
}
