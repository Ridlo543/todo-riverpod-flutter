import 'package:flutter/material.dart';

// untuk mempermudah akses ke ThemeData, TextTheme, ColorScheme, dan Size
extension BuildContextExtensions on BuildContext {
  ThemeData get _theme => Theme.of(this);
  TextTheme get textTheme => _theme.textTheme;
  ColorScheme get colorScheme => _theme.colorScheme;
  Size get deviceSize => MediaQuery.sizeOf(this);
}
