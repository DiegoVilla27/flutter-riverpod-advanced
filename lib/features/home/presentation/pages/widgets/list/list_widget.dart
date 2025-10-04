import 'package:flutter/material.dart';
import 'package:flutter_riverpod_advanced/features/home/presentation/pages/widgets/list/data/menu.dart';
import 'package:flutter_riverpod_advanced/features/home/presentation/pages/widgets/list/widgets/item/item_widget.dart';

/// [ListWidget] displays a list of menu items with dividers.
/// 
/// - Iterates over the [menu] list to create [ItemWidget]s.
/// - Each item is separated by a [Divider].
/// 
/// Usage:
/// Place [ListWidget] in your widget tree to show navigation options.
class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(_) {
    return ListView(
      children:
          menu.map((item) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ItemWidget(item: item), const Divider()],
            );
          }).toList(),
    );
  }
}
