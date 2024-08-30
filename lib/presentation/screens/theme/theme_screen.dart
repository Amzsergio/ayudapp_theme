import 'package:ayudapp_theme/config/menu/theme_settings_menu.dart';
import 'package:ayudapp_theme/presentation/providers/providers.dart';
import 'package:ayudapp_theme/presentation/widgets/custom_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSettingsScreen extends ConsumerWidget {
  const ThemeSettingsScreen({super.key});

  static const String name = 'theme-settings';

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final isDarkmode = ref.watch(isDarkmodeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajustes de Tema'),
        actions: [
          IconButton(
            icon: Icon(
              isDarkmode ? Icons.dark_mode : Icons.light_mode,
            ),
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            },
          ),
        ],
      ),
      body: const _ThemeScreenView(),
    );
  }
}

class _ThemeScreenView extends StatelessWidget {
  const _ThemeScreenView();

  @override
  Widget build(BuildContext context) {
    final settingsMenu = themeSettingsMenu;

    return ListView.builder(
      itemCount: settingsMenu.length,
      itemBuilder: ((context, index) {
        final menuItem = settingsMenu[index];

        return CustomTileWidget(menuItem: menuItem);
      }),
    );
  }
}
