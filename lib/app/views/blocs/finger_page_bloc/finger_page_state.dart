abstract class FingerPageState {}

class FingerPageSucess implements FingerPageState {
  const FingerPageSucess();
}

class FingerPageError implements FingerPageState {
  final String message;

  const FingerPageError(this.message);
}

class FingerPageWaiting implements FingerPageState {
  const FingerPageWaiting();
}
