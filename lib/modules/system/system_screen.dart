import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resomy_client/core/helper/navigatable.dart';
import 'package:resomy_client/core/routes/routes.dart';
import 'package:resomy_client/modules/system/screens/categories_screen.dart';
import 'package:resomy_client/modules/system/screens/home_screen.dart';
import 'package:resomy_client/modules/system/screens/profile_screen.dart';

class SystemScreen extends StatefulWidget implements Navigatable {

  @override
  String getName() {
    return Routes.system;
  }

  @override
  _SystemScreenState createState() => _SystemScreenState();
}

class _SystemScreenState extends State<SystemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "",
          ),
        ],
      ),
    );
  }

  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    ProfileScreen(),
  ];

  int selectedIndex = 0;
}
