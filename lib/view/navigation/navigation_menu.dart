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
        () => SizedBox(
          height: 75.0, // Adjust this value if needed
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconWithLabel(
                  icon: Icons.home,
                  label: 'Home',
                  isSelected: controller.selectedIndex.value == 0,
                  onPressed: () => controller.selectedIndex.value = 0,
                ),
                _buildIconWithLabel(
                  icon: Icons.calendar_month,
                  label: 'Events',
                  isSelected: controller.selectedIndex.value == 1,
                  onPressed: () => controller.selectedIndex.value = 1,
                ),
                _buildIconWithLabel(
                  icon: Icons.notifications,
                  label: 'Notifications',
                  isSelected: controller.selectedIndex.value == 2,
                  onPressed: () => controller.selectedIndex.value = 2,
                ),
                _buildIconWithLabel(
                  icon: Icons.account_circle_rounded,
                  label: 'Profile',
                  isSelected: controller.selectedIndex.value == 3,
                  onPressed: () => controller.selectedIndex.value = 3,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }

  Widget _buildIconWithLabel({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected
                ? const Color.fromARGB(255, 255, 17, 0)
                : Colors.grey,
          ),
          SizedBox(height: 4.0), // Space between icon and label
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? const Color.fromARGB(255, 255, 17, 0)
                  : Colors.grey,
              fontSize: 12.0, // Adjust text size if needed
            ),
          ),
        ],
      ),
    );
  }
}
