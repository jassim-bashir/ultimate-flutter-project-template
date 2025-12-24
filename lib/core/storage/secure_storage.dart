abstract class SecureStorage {
  Future<void> saveToken(String token);
  Future<String?> readToken();
}
