import 'package:flutter_riverpod_advanced/core/router/router_names.dart';

/// [MenuItem] represents a single item in the application's menu.
///
/// - Contains a [title], [subtitle], [path], and [icon] for each menu entry.
///
/// Usage:
/// Use [menu] to display navigation options in your UI.
class MenuItem {
  final String title;
  final String subtitle;
  final String path;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.path,
  });
}

/// A constant list of [MenuItem]s used for navigation in the app.
const List<MenuItem> menu = [
  MenuItem(
    title: "Basic (Notifier)",
    subtitle: "How to use Basic Provider",
    path: AppRouterNames.basic,
  ),
  MenuItem(
    title: "Requests (AsyncNotifier)",
    subtitle: "How to use Requests Provider",
    path: AppRouterNames.requests,
  ),
  MenuItem(
    title: "Shared (Notifier)",
    subtitle: "How to use Shared Provider",
    path: AppRouterNames.shared,
  ),
  MenuItem(
    title: "Basic + Annotation",
    subtitle: "How to use Basic Provider with Annotation",
    path: AppRouterNames.basicAnnotation,
  ),
];
