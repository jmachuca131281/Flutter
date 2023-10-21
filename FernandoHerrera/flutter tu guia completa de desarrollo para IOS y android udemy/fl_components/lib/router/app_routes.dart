import 'package:fl_components/screens/listview_builder_screen.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import '../models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_max_outlined),
    MenuOption(
        route: 'listview1',
        name: 'listview tipo 1',
        screen: const Listview1Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'listview2',
        name: 'listview tipo 2',
        screen: const Listview2Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card),
    MenuOption(
        route: 'avatar',
        name: 'Circle - Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated - Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOption(
        route: 'inputs',
        name: 'Text Inpusts',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
    MenuOption(
        route: 'Slider',
        name: 'Slider',
        screen: const SliderScreen(),
        icon: Icons.access_alarm),
    MenuOption(
        route: 'listview',
        name: 'InfinityScrol & PullRefresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build_circle_outlined),
  ];
  // ! Segunda opción.
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // ! Una manera de utilizar las rutas.
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (constex) => const AlertScreen(),
    );
  }
}
