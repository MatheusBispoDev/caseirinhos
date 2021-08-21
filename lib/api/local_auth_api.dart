import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();

  static Future<bool> biometricSupported() async {
    try {
      return await _auth.isDeviceSupported();
    } on PlatformException {
      return false;
    }
  }

  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException {
      return false;
    }
  }

  static Future<bool> authenticateWithBiometrics() async {
    final isSupported = await biometricSupported();
    final isAvailable = await hasBiometrics();

    if (!isAvailable && !isSupported) {
      return false;
    }

    try {
      return await _auth.authenticate(
        localizedReason: 'Escaneando biometria',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      return false;
    }
  }
}
