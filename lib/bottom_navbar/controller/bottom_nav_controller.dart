import 'package:flutter/material.dart';

import '../../home/home_screen.dart';
import '../../posts/posts_screen.dart';
import '../../search_result/search_result_screen.dart';
import '../widgets/add_post_dialogue.dart';
import '../widgets/bottom_nav_icon.dart';

class BottomNavController {

  int selectedIndex = 0;

  Color getItemColor(index) {
    return selectedIndex == index ? Colors.black : Colors.black54;
  }

  void onItemTapped(int index) {
    selectedIndex = index;
  }


  showDialogue(context){
    showDialog(
        barrierDismissible: true,
        barrierColor: Colors.transparent,
        context: context,
        builder: (context) {
          return const AddPostDialogue();
        });
  }


  List<Widget> screens = const [
    HomeScreen(),
    PostsScreen(),
    SearchResultScreen(),
    PostsScreen(),
    HomeScreen(),
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
        label: 'Add Post',
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
