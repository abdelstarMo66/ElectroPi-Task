import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManager {
  const SecureStorageManager(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  Future<String?> getData({required String key}) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> saveData({required String key, required dynamic value}) async {
    await _secureStorage.write(key: key, value: value.toString());
  }

  Future<void> removeData({required String key}) async {
    await _secureStorage.delete(key: key);
  }

  Future<bool> containsKey(String key) async {
    final allValues = await _secureStorage.readAll();
    return allValues.containsKey(key);
  }

  Future<void> clearAll() async {
    await _secureStorage.deleteAll();
  }
}
