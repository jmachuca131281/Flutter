import 'package:go_router/go_router.dart';

import 'package:menara/presentation/screens/beauty_screen.dart';
import 'package:menara/presentation/screens/pets_screen.dart';
import 'package:menara/presentation/screens/products_screen.dart';
import 'package:menara/presentation/screens/home_screen.dart';
import 'package:menara/presentation/screens/shopping_cart_screen.dart';
// import 'package:menara/widgets/bottom_navigation_bar.dart';

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
    GoRoute(
      path: '/shopping',
      name: 'shopping',
      builder: (context, status) => ShoppingCartScreen(),
    ),
  ],
);
