import 'package:edtech/gen/assets.gen.dart';
import 'package:edtech/screen/bottom_bar_screens/courses_screen.dart';
import 'package:edtech/screen/bottom_bar_screens/profile_page.dart';
import 'package:edtech/screen/bottom_bar_screens/settings_page.dart';
import 'package:edtech/utilities/colors.dart';
import 'package:edtech/utilities/strings.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    CoursesScreen(),
    ProfilePage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(20)),
          child: BottomNavigationBar(
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.book_rounded),
                label: KString.courses,
              ),
              BottomNavigationBarItem(
                icon: Assets.images.profileIcon.image(
                    scale: 2,
                    color:
                        _selectedIndex == 1 ? KColor.appOrange : Colors.grey),
                label: KString.profile,
              ),
              BottomNavigationBarItem(
                icon: Assets.images.settingsIcon.image(
                    scale: 2,
                    color:
                        _selectedIndex == 2 ? KColor.appOrange : Colors.grey),
                label: KString.settings,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: KColor.appOrange,
            onTap: _onItemTapped,
            elevation: 8,
          ),
        ),
      ),
    );
  }
}
