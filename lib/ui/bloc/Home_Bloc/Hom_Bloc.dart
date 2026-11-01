import 'package:flutter_bloc/flutter_bloc.dart';

import 'Home_Event.dart';
import 'Home_States.dart';

class HomeBloc extends Bloc<HomeEvents, HomeStates> {
  HomeBloc() : super(const PopOutState()) {
    on<ChangePopOutItem>((event, emit) {
      emit(PopOutState(selectedItem: event.selectedItem));
    });
  }
}