import 'package:jwt_store/interface/jwt_store.dart';

class JwtStoreTesting implements JwtStore {
  final Map<String, String> _dict = {};

  @override
  Future<void> delete(JwtStoreProperties properties) async {
    _dict.remove(properties.name);
  }

  @override
  Future<String?> load(JwtStoreProperties properties) async {
    _dict[properties.name];
  }

  @override
  Future<void> save(JwtStoreProperties properties, String token) async {
    _dict[properties.name] = token;
  }
}
