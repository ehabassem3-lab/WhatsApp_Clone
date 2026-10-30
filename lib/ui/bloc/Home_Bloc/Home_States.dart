import 'package:equatable/equatable.dart';

sealed class HomeStates extends Equatable {
  const HomeStates();

  int get currentIndex;

  @override
  List<Object?> get props => [currentIndex];
}

class BottomNavState extends HomeStates {
  @override
  final int currentIndex;

  const BottomNavState({this.currentIndex = 0});
}