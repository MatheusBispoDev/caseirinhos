import 'package:bloc/bloc.dart';

enum AppEvent { themeDark, themeLight }

class AppBloc extends Bloc<AppEvent, bool>{
  AppBloc() : super(false);

  @override
  Stream<bool> mapEventToState(AppEvent event) async* {
    if(event == AppEvent.themeLight) {
      yield !state;
    }
  }


}