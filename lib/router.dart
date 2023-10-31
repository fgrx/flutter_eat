import 'package:flutter/material.dart';
import 'package:flutter_eat/screens/about.dart';
import 'package:flutter_eat/app_scaffold.dart';
import 'package:flutter_eat/screens/timers_management.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final List<RouteBase> goRoutes = [
  GoRoute(
    path: "/timers",
    parentNavigatorKey: _shellNavigatorKey,
    builder: (context, state) => TimersManagementScreen(),
  ),
  GoRoute(
    path: "/about",
    parentNavigatorKey: _shellNavigatorKey,
    builder: (context, state) => AboutScreen(),
  ),
];

final nestedRoutes = ShellRoute(
  navigatorKey: _shellNavigatorKey,
  routes: goRoutes,
  builder: (context, state, child) => AppScaffold(child: child),
);

final router = GoRouter(
  initialLocation: "/timers",
  navigatorKey: _rootNavigatorKey,
  routes: [nestedRoutes],
);
