import 'package:flutter_bloc/flutter_bloc.dart';

import 'Home_Event.dart';
import 'Home_States.dart';

class HomBloc extends Bloc<HomeEvents, HomeStates> {
  HomBloc() : super(const BottomNavState()) {

    on<ChangeBottomNavIndex>((event, emit) {
      emit(BottomNavState(currentIndex: event.index));
    });

  }
}