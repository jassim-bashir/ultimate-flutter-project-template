import 'package:ultimate_flutter_project_template/core/env/env.dart';

class DevEnv implements AppEnv {
  @override
  String get apiBaseUrl => 'https://dev.api.com';

  @override
  bool get enableLogs => true;
}
