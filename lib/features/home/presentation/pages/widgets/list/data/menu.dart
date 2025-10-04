import 'package:flutter/material.dart';
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
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.path,
    required this.icon,
  });
}

/// A constant list of [MenuItem]s used for navigation in the app.
const List<MenuItem> menu = [
  MenuItem(
    title: "Basic",
    subtitle: "How to use Basic Provider",
    path: AppRouterNames.basic,
    icon: Icons.center_focus_weak,
  ),
  MenuItem(
    title: "Requests",
    subtitle: "How to use Requests Provider",
    path: AppRouterNames.requests,
    icon: Icons.center_focus_weak,
  ),
  MenuItem(
    title: "Basic",
    subtitle: "How to use Shared Provider",
    path: AppRouterNames.shared,
    icon: Icons.center_focus_weak,
  ),
];
