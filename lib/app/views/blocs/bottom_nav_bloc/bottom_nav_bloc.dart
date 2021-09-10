import 'package:caseirinhos/app/views/blocs/bottom_nav_bloc/bottom_nav_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBloc extends Bloc<int, BottomNavState> {
  BottomNavBloc() : super(BottomNavHomeState());

  @override
  Stream<BottomNavState> mapEventToState(int event) async* {
    switch (event) {
      case 0:
        yield BottomNavHomeState();
        break;
      case 2:
        yield BottomNavSalesState();
        break;
      case 1:
        yield BottomNavContactsState();
        break;
    }
  }
}
