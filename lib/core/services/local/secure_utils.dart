import 'package:mzady/core/services/local/secure_storage_manager.dart';

abstract final class SecureKeys {
  static const String onboarding = 'onboarding';
  static const String userToken = 'user-token';
  static const String fcmToken = 'fcmToken';
  static const String lang = 'lang';
  static const String theme = 'theme';
}

class SecureMethods {
  const SecureMethods(this._secureStorageManager);

  final SecureStorageManager _secureStorageManager;

  Future<void> saveToken(String token) async {
    await _secureStorageManager.saveData(
      key: SecureKeys.userToken,
      value: token,
    );
  }

  Future<bool> isLoggedIn() async {
    final token = await getNullableToken();
    return token != null && token.isNotEmpty;
  }

  Future<String?> getNullableToken() async {
    return await _secureStorageManager.getData(key: SecureKeys.userToken);
  }

  Future<String> getToken() async {
    String? token = await _secureStorageManager.getData(
      key: SecureKeys.userToken,
    );

    if (token == null || token.isEmpty) {
      token = 'null';
    }

    return token;
  }

  Future<void> storeFCMToken(String token) async {
    final String? storedFcmToken = await _secureStorageManager.getData(
      key: SecureKeys.fcmToken,
    );

    if (storedFcmToken != token) {
      await _secureStorageManager.saveData(
        key: SecureKeys.fcmToken,
        value: token,
      );
    }
  }

  Future<void> saveOnboardingVisited() async {
    await _secureStorageManager.saveData(
      key: SecureKeys.onboarding,
      value: 'true',
    );
  }

  Future<bool> isOnboardingVisited() async {
    final result = await _secureStorageManager.getData(
      key: SecureKeys.onboarding,
    );
    return result == 'true';
  }
}
