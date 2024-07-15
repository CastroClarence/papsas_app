//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appdev/view/navigation/navigation.controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.event), label: 'Events'),
            NavigationDestination(
                icon: Icon(Icons.notifications), label: 'Notification'),
            NavigationDestination(
                icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}
