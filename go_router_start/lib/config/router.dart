import 'package:go_router/go_router.dart';

import '../screens/details/ditails_screen.dart';
import '../screens/home/home_screen.dart';

// GoRouter configuration

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state)=>const DetailsScreen(),
    )
  ]
);

