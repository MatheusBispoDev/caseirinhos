import 'package:caseirinhos/app/repositories/authentication/bio_auth_repository.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthRepository implements IBiometricAuthRepository {
  final _auth = LocalAuthentication();

  @override
  Future<bool> authenticateWithBio() async {
    final isSupported = await _biometricSupported();
    final isAvailable = await _hasBiometrics();

    if (!isAvailable && !isSupported) {
      return false;
    }

    try {
      return await _auth.authenticate(
        localizedReason: 'Escaneando biometria',
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException {
      return false;
    }
  }

  Future<bool> _biometricSupported() async {
    try {
      return await _auth.isDeviceSupported();
    } on PlatformException {
      return false;
    }
  }

  Future<bool> _hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException {
      return false;
    }
  }
}
