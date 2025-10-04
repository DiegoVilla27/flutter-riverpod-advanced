import 'package:flutter/material.dart';
import 'package:flutter_riverpod_advanced/features/home/presentation/pages/widgets/list/data/menu.dart';
import 'package:go_router/go_router.dart';

/// [ItemWidget] displays a single menu item as a list tile.
/// 
/// - Shows the item's title and subtitle.
/// - Displays an arrow icon as a trailing widget.
/// - Navigates to the item's path when tapped using [context.pushNamed].
/// 
/// Usage:
/// Use [ItemWidget] inside a list to display navigation options.
class ItemWidget extends StatelessWidget {
  final MenuItem item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item.title),
      subtitle: Text(item.subtitle),
      trailing: Icon(Icons.arrow_right),
      onTap: () => context.pushNamed(item.path),
    );
  }
}
