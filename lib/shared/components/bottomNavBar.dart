import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

Widget defualtBottomNavigationBar({
  required List<GButton> tabs,
  required ValueChanged<int> onTabChange,
  required int currentIndex,
  required BuildContext context,
}) =>
    Container(
        child: GNav(
          gap: 7,
          onTabChange: onTabChange,
          selectedIndex: 0,
          backgroundColor: Colors.blueGrey,
          curve: Curves.linear,
          activeColor: Colors.orange,
          color: Colors.white,
          textStyle: Theme.of(context).textTheme.subtitle2!.copyWith(
              fontSize: 16.0, color: Colors.amber, fontWeight: FontWeight.bold),
          padding: const EdgeInsets.all(16),
          tabs: tabs,
        ));