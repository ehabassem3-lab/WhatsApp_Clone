abstract class HomeEvents {}

class ChangeBottomNavIndex extends HomeEvents {
  final int index;

  ChangeBottomNavIndex(this.index);
}