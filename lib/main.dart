import 'package:ayudapp_theme/config/router/router.dart';
import 'package:ayudapp_theme/config/theme/app_theme.dart';
import 'package:ayudapp_theme/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkmode = ref.watch(isDarkmodeProvider);
    final selectedColor = ref.watch(selectedColorProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: AppTheme(
        isDarkmode: isDarkmode,
        selectedColor: selectedColor,
      ).getTheme(),
    );
  }
}
