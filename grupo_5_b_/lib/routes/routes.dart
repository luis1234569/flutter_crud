import 'package:flutter/material.dart';
import 'package:grupo_5_b_/models/menu_option.dart';
import 'package:grupo_5_b_/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'request-list',
        icon: Icons.list,
        name: 'List',
        screen: const RequestListScreen()),
    MenuOption(
        route: 'request-form',
        icon: Icons.list,
        name: 'Form',
        screen: FormScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (final menuOption in menuOptions) {
      routes.addAll(
          {menuOption.route: (BuildContext context) => menuOption.screen});
    }
    return routes;
  }
}
