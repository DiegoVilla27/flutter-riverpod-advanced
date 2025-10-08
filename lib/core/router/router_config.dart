import 'package:flutter_riverpod_advanced/core/router/router_names.dart';
import 'package:flutter_riverpod_advanced/features/basic/presentation/pages/basic_screen.dart';
import 'package:flutter_riverpod_advanced/features/basic_annotation/presentation/pages/basic_annotation_screen.dart';
import 'package:flutter_riverpod_advanced/features/home/presentation/pages/home_screen.dart';
import 'package:flutter_riverpod_advanced/features/requests/presentation/pages/requests_screen.dart';
import 'package:flutter_riverpod_advanced/features/requests_annotation/presentation/pages/requests_annotation_screen.dart';
import 'package:flutter_riverpod_advanced/features/shared/presentation/pages/shared_screen.dart';
import 'package:flutter_riverpod_advanced/features/todos/presentation/pages/todos_screen.dart';
import 'package:go_router/go_router.dart';

/// [AppRouterConfig] is responsible for configuring the application's routing using GoRouter.
/// 
/// It defines the main navigation structure, specifying the initial route and all available routes.
/// Each route is associated with a name, a path, and a corresponding screen widget.
/// 
/// Usage:
/// Access the router via `AppRouterConfig.router` to integrate with your app's navigation.
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
        name: AppRouterNames.basicAnnotation,
        path: '/basic_annotation',
        builder: (_, _) => const BasicAnnotationScreen(),
      ),
      GoRoute(
        name: AppRouterNames.requests,
        path: '/requests',
        builder: (_, _) => const RequestsScreen(),
      ),
      GoRoute(
        name: AppRouterNames.requestsAnnotation,
        path: '/requests_annotation',
        builder: (_, _) => const RequestsAnnotationScreen(),
      ),
      GoRoute(
        name: AppRouterNames.shared,
        path: '/shared',
        builder: (_, _) => const SharedScreen(),
      ),
      GoRoute(
        name: AppRouterNames.todo,
        path: '/todo',
        builder: (_, _) => const TodoScreen(),
      )
    ],
  );
}
