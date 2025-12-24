import 'package:flutter/material.dart';
import 'package:ultimate_flutter_project_template/routing/app_router.dart';

class AppBootstrap extends StatelessWidget {
  const AppBootstrap({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter, // <- Router with `/` defined
      title: 'Flutter Ultimate Template',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(), // optional, keep template theme
      darkTheme: ThemeData.dark(),
    );
  }
}
