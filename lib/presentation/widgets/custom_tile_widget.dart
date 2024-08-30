import 'package:ayudapp_theme/config/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTileWidget extends StatelessWidget {
  const CustomTileWidget({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      leading: Icon(
        menuItem.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: colors.primary,
      ),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
