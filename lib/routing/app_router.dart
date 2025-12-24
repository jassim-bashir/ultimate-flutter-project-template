import 'package:go_router/go_router.dart';
import 'package:ultimate_flutter_project_template/features/home/presentation/pages/home_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/', // root route = Home Page
      builder: (context, state) => const HomePage(),
    ),
    // Other feature routes can remain here
  ],
);
