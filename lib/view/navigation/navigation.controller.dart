import 'package:appdev/view/event/event.dart';
import 'package:appdev/view/notification/notification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appdev/view/home/home.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
    const HomePage(),
    MyHomePage(),
    const NotificationPage(),
    Container(color: Colors.orange),
    Container(color: Colors.green)
  ];
}
