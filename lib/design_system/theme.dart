import 'package:flutter/material.dart';
import 'package:ultimate_flutter_project_template/design_system/colors.dart';
import 'package:ultimate_flutter_project_template/design_system/typography.dart';

class AppTheme {
  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    textTheme: AppTypography.textTheme,
  );

  static final dark = ThemeData.dark(useMaterial3: true);
}
