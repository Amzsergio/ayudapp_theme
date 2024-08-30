import 'package:ayudapp_theme/config/theme/app_theme.dart';
import 'package:ayudapp_theme/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorSettingsScreen extends StatelessWidget {
  const ColorSettingsScreen({super.key});

  static const String name = 'color-settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color / Tema'),
      ),
      body: const _ColorSettingsView(),
    );
  }
}

class _ColorSettingsView extends ConsumerStatefulWidget {
  const _ColorSettingsView();

  @override
  ConsumerState<_ColorSettingsView> createState() => _ColorSettingsViewState();
}

class _ColorSettingsViewState extends ConsumerState<_ColorSettingsView> {
  @override
  Widget build(BuildContext context) {
    final List<Color> colorOptions = colorThemeOptions;
    final selectedColor = ref.watch(selectedColorProvider);

    return ListView.builder(
      itemCount: colorOptions.length,
      itemBuilder: ((BuildContext context, int index) {
        final Color color = colorOptions[index];
        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          value: index,
          groupValue: selectedColor,
          onChanged: (value) => setState(
            () {
              ref.read(selectedColorProvider.notifier).state = index;
            },
          ),
        );
      }),
    );
  }
}
