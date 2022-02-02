import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:prod_family/app/Shared/Colors.dart';
import 'package:prod_family/app/modules/Favorit/views/favorit_view.dart';
import 'package:prod_family/app/modules/Markit/views/markit_view.dart';
import 'package:prod_family/app/modules/Setting/views/setting_view.dart';
import 'package:prod_family/app/modules/home/views/home_view.dart';
import 'package:prod_family/app/services/custom_icons.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeView(),
              FavoritView(),
              MarkitView(),
              SettingView(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            unselectedItemColor: KColor_Icons_Grey,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: KColor_Main_Primary_1,
            iconSize: 18,
            elevation: 20,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.hart),
                label: 'Favorit',
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.market),
                label: 'Market',
              ),
              BottomNavigationBarItem(
                icon: Icon(CustomIcons.person),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
