abstract class IBiometricAuthRepository {
  Future<bool> biometricSupported();

  Future<bool> hasBiometrics();

  Future<bool> authenticateWithBio();
}