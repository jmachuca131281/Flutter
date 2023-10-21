import 'package:go_router/go_router.dart';
import 'package:menara/screens/beauty_screen.dart';
import 'package:menara/screens/home_screen.dart';
import 'package:menara/screens/pets_screen.dart';
import 'package:menara/screens/products_screen.dart';

final app = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'products',
      builder: (context, state) => const ProductsScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/beauty',
      name: 'beauty',
      builder: (context, status) => const BeautyScreen(),
    ),
    GoRoute(
      path: '/pets',
      name: 'pets',
      builder: (context, status) => const PetsScreen(),
    ),
  ],
);
