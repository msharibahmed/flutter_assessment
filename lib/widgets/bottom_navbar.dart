import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BottomNavBaR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: (bottom_navbar_name.entries)
            .map((item) => BottomNavigationBarItem(
                icon: Icon(item.key), label: item.value))
            .toList()

        );
  }
}
