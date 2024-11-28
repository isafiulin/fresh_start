import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBarItem {
  BottomNavigationBarItem getItem({
    required final int selectedIndex,
    required final IconData icon,
    required final int itemIndex,
    final bool isColored = true,
    final bool isEmpty = false,
  }) {
    return BottomNavigationBarItem(
      label: '',
      icon: isEmpty
          ? const SizedBox()
          : Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                icon,
                size: 40.spMax,
              ),
            ),
    );
  }
}
