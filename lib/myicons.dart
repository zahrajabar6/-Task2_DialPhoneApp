import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({
    Key? key,
    required this.icon,
    required this.size,
    required this.color,
  }) : super(key: key);
  final IconData icon;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
    );
  }
}
