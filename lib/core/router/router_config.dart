import 'package:flutter_riverpod_advanced/core/router/router_names.dart';
import 'package:flutter_riverpod_advanced/features/basic/presentation/pages/basic_screen.dart';
import 'package:flutter_riverpod_advanced/features/home/presentation/pages/home_screen.dart';
import 'package:flutter_riverpod_advanced/features/requests/presentation/pages/requests_screen.dart';
import 'package:flutter_riverpod_advanced/features/shared/presentation/pages/shared_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouterConfig {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: <RouteBase>[
      GoRoute(
        name: AppRouterNames.home,
        path: '/',
        builder: (_, _) => const HomeScreen(),
      ),
      GoRoute(
        name: AppRouterNames.basic,
        path: '/basic',
        builder: (_, _) => const BasicScreen(),
      ),
      GoRoute(
        name: AppRouterNames.requests,
        path: '/requests',
        builder: (_, _) => const RequestsScreen(),
      ),
      GoRoute(
        name: AppRouterNames.shared,
        path: '/shared',
        builder: (_, _) => const SharedScreen(),
      ),
    ],
  );
}
