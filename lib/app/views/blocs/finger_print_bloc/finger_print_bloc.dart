
import 'package:caseirinhos/app/repositories/authentication_repository/bio_auth_repository.dart';
import 'package:caseirinhos/app/views/blocs/finger_print_bloc/finger_print_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FingerPageBloc extends Bloc<void, FingerPageState> {
  final IBiometricAuthRepository authentication;

  FingerPageBloc(this.authentication) : super(FingerPageWaiting());

  @override
  Stream<FingerPageState> mapEventToState(event) async* {
    yield FingerPageWaiting();
    try {
      final isAuthenticated = await authentication.authenticateWithBio();
      if (isAuthenticated) {
        yield FingerPageSucess();
      }
      if (!isAuthenticated) {
        yield FingerPageError(isAuthenticated.toString());
      }
    } catch (e) {
      yield FingerPageError(e.toString());
    }
  }
}
