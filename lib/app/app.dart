import 'package:flutter/material.dart';
import 'package:ultimate_flutter_project_template/design_system/theme.dart';
import 'package:ultimate_flutter_project_template/routing/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
