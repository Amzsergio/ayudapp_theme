import 'package:ayudapp_theme/config/menu/menu.dart';
import 'package:ayudapp_theme/presentation/widgets/custom_tile_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = 'theme-home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ayudapp Theme"),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          final menuItem = menuItems[index];

          return CustomTileWidget(
            menuItem: menuItem,
          );
        });
  }
}
