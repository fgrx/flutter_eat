import 'package:flutter/material.dart';
import 'package:flutter_eat/models/menu.dart';

List<Menu> navigationMenus = const [
  Menu(
    title: "Timers",
    icon: Icon(Icons.alarm),
    path: "/timers",
  ),
  Menu(
    title: "About",
    icon: Icon(Icons.question_mark_outlined),
    path: "/about",
  ),
];
