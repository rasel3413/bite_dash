import 'package:bite_dash/app.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

final router = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(path:AppRoutes.home , builder: (context, state) => const SplashScreen()),
    // GoRoute(
    //   path: AppRoutes.home,
    //   builder: (context, state) => const HomePage(),
    // ),
    // GoRoute(
    //   path: AppRoutes.login,
    //   builder: (context, state) => const LoginPage(),
    // ),
    // GoRoute(
    //   path: AppRoutes.register,
    //   builder: (context, state) => const RegisterPage(),
    // ),
    // GoRoute(
    //   path: AppRoutes.cart,
    //   builder: (context, state) => const CartPage(),
    // ),
    // GoRoute(
    //   path: AppRoutes.checkout,
    //   builder: (context, state) => const CheckoutPage(),
    // ),
    // GoRoute(
    //   path: AppRoutes.profile,
    //   builder: (context, state) => const ProfilePage(),
    // ),
  ],
);