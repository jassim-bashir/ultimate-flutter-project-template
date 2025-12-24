import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ultimate_flutter_project_template/app/app_bootstrap.dart';

void main() {
  runApp(
    const ProviderScope(
      // <- Wrap app with ProviderScope
      child: AppBootstrap(),
    ),
  );
}
