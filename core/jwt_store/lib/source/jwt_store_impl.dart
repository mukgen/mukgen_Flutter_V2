import 'package:jwt_store/interface/jwt_store.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class JwtStoreImpl implements JwtStore {
  final FlutterSecureStorage storage;

  JwtStoreImpl(this.storage);

  @override
  Future<void> save(JwtStoreProperties properties, String token) async =>
      await storage.write(key: properties.name, value: token);

  @override
  Future<String?> load(JwtStoreProperties properties) async =>
      await storage.read(key: properties.name);

  @override
  Future<void> delete(JwtStoreProperties properties) async =>
      await storage.delete(key: properties.name);
}
