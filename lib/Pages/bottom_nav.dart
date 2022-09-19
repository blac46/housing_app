import 'package:flutter/material.dart';
import 'package:housing_app/comproment/account_screen.dart';
import 'package:housing_app/comproment/explore_page.dart';
import 'package:housing_app/comproment/saved_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentindex  = 0;
  List pages=[
    Explore(),
   SavedPage(),
   Scaffold(),
   AccountScreen()
  ];

  void _onTap(int selectedItem){
    setState(() {
      currentindex = selectedItem;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pages.length,
      child: Scaffold(
        body: pages[
          currentindex
        ],
            bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: currentindex,
              selectedItemColor: Color(0xff01957D),
              unselectedItemColor: Colors.grey,
              onTap: _onTap,
              items:const [
                BottomNavigationBarItem(
                  label: 'Explore',
                    icon: Icon(Icons.search)
                ),
                BottomNavigationBarItem(
                    label: 'Saved',
                    icon: Icon(Icons.bookmark),
                    ),
                
                BottomNavigationBarItem(
                    label: 'Charts',
                    icon: Icon(Icons.message)
                ),
                BottomNavigationBarItem(
                    label: 'Account',
                    icon: Icon(Icons.person)
                ),
              ],
            ) ,
      ),
    );
  }
}
