import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

final menuItems = <MenuItem>[
  MenuItem(
    title: 'Configuraciones',
    subtitle: 'ajusta tu tema',
    link: '/theme-settings',
    icon: Icons.settings,
  ),
];
