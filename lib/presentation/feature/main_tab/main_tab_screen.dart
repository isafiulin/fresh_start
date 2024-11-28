import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fresh_start/presentation/widgets/custom_bottom_nav_bar_item.dart';

import 'package:go_router/go_router.dart';

class MainTabScreen extends StatelessWidget {
  MainTabScreen(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;
  final CustomBottomNavBarItem customBottomNavBarItem =
      CustomBottomNavBarItem();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: navigationShell,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: _bottomNavigationBarWidget(context),
      );

  Widget _bottomNavigationBarWidget(BuildContext context) => Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(1, -2),
            )
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
          child: BottomNavigationBar(
            onTap: _onDestinationSelected,
            backgroundColor: Colors.white,
            currentIndex: navigationShell.currentIndex,
            iconSize: 30,
            showSelectedLabels: false,
            unselectedFontSize: 0,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            items: [
              customBottomNavBarItem.getItem(
                selectedIndex: navigationShell.currentIndex,
                icon: Icons.smoke_free,
                itemIndex: 0,
              ),
              customBottomNavBarItem.getItem(
                selectedIndex: navigationShell.currentIndex,
                icon: CupertinoIcons.graph_circle,
                itemIndex: 1,
              ),
              customBottomNavBarItem.getItem(
                selectedIndex: navigationShell.currentIndex,
                icon: CupertinoIcons.info_circle,
                itemIndex: 3,
              ),
              customBottomNavBarItem.getItem(
                selectedIndex: navigationShell.currentIndex,
                icon: CupertinoIcons.profile_circled,
                itemIndex: 4,
              ),
            ],
          ),
        ),
      );

  Future<void> _onDestinationSelected(int index) async {
    navigationShell.goBranch(index,
        initialLocation: index == navigationShell.currentIndex);
  }
}
