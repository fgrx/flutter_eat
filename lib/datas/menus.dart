import 'package:flutter/material.dart';
import 'package:flutter_eat/models/menu.dart';
import 'package:flutter_eat/screens/about.dart';
import 'package:flutter_eat/screens/timers_management.dart';

List<Menu> navigationMenus = const [
  Menu(
    title: "Timers",
    icon: Icon(Icons.alarm),
    screen: TimersManagementScreen(),
  ),
  Menu(
    title: "About",
    icon: Icon(Icons.question_mark_outlined),
    screen: AboutScreen(),
  ),
];
