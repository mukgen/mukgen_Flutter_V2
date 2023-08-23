enum JwtStoreProperties { accessToken, refreshToken }

abstract class JwtStore {
  Future<void> save(JwtStoreProperties properties, String token);

  Future<String?> load(JwtStoreProperties properties);

  Future<void> delete(JwtStoreProperties properties);
}
