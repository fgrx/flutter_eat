import 'package:flutter/material.dart';

class Menu {
  const Menu({required this.title, required this.icon, required this.screen});

  final String title;
  final Icon icon;
  final Widget screen;
}
