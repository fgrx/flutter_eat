import 'package:flutter/material.dart';
import 'package:flutter_eat/datas/menus.dart';
import 'package:flutter_eat/models/menu.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  Menu currentScreen = navigationMenus[0];
  int _selectedScreenIndex = 0;

  List<BottomNavigationBarItem> createNavigationMenusWidgets() {
    return navigationMenus
        .map((menuItem) =>
            BottomNavigationBarItem(icon: menuItem.icon, label: menuItem.title))
        .toList();
  }

  _selectScreen(index) {
    setState(() {
      _selectedScreenIndex = index;
      currentScreen = navigationMenus[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentScreen.title),
      ),
      body: currentScreen.screen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        currentIndex: _selectedScreenIndex,
        items: createNavigationMenusWidgets(),
      ),
    );
  }
}
