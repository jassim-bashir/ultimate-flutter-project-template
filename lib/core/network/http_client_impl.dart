import 'package:ultimate_flutter_project_template/core/network/api_client.dart';

class HttpClientImpl implements ApiClient {
  @override
  Future<T> get<T>(String path) {
    throw UnimplementedError();
  }

  @override
  Future<T> post<T>(String path, Object body) async {
    throw UnimplementedError();
  }
}
