import 'package:ayudapp_theme/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/theme-settings',
    name: ThemeSettingsScreen.name,
    builder: (context, state) => const ThemeSettingsScreen(),
  ),
  GoRoute(
    path: '/color-settings',
    name: ColorSettingsScreen.name,
    builder: (context, state) => const ColorSettingsScreen(),
  ),
]);
