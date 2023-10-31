import 'package:flutter/material.dart';
import 'package:flutter_eat/datas/menus.dart';
import 'package:flutter_eat/models/menu.dart';
import 'package:go_router/go_router.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({super.key, required this.child});
  final Widget child;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
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
    context.go(currentScreen.path);
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(currentScreen.title),
        ),
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          currentIndex: _selectedScreenIndex,
          items: createNavigationMenusWidgets(),
        ),
      );
    });
  }
}
