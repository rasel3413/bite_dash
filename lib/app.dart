import 'package:bite_dash/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'core/constants/app_colors.dart';
import 'core/constants/app_strings.dart';
import 'routes/router.dart';

class BiteDashApp extends StatelessWidget {
  const BiteDashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppStrings.appName,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          color: AppColors.primary,
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.textPrimary),
          bodyMedium: TextStyle(color: AppColors.textSecondary),
        ),
      ),
      routerConfig: router, // Using go_router for navigation
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3), () {
    //   if (mounted) {
    //     context.go(AppRoutes.login);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: context.read<ThemeData>().brightness == Brightness.light
          ? const Center(
              child: Text(
                'Welcome to BiteDash',
                style: TextStyle(fontSize: 24, color: AppColors.primary),
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
