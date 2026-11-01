import 'package:equatable/equatable.dart';
import 'package:whats_app/domain/entities/Pop_Out.dart';


sealed class HomeStates extends Equatable {
  const HomeStates();
  // int get currentIndex;
  @override
  List<Object?> get props => [];
}

class PopOutState extends HomeStates {
  final SampleItem? selectedItem;
     const PopOutState({this.selectedItem = null}); 
       @override
  List<Object?> get props => [selectedItem];
}


// class BottomNavState extends HomeStates {
//   @override
//   final int currentIndex;
//
//   const BottomNavState({this.currentIndex = 0});
// }