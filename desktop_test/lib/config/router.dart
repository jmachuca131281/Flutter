import 'package:desktop_test/screens/details_screen.dart';
import 'package:desktop_test/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final app = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (BuildContext context, GoRouterState state) => const DetailsScreen(),
    ),
  ]
);
