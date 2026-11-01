
import 'package:whats_app/domain/entities/Pop_Out.dart';

abstract class HomeEvents {}


class ChangePopOutItem extends  HomeEvents {
  final SampleItem selectedItem ;
  ChangePopOutItem(this.selectedItem) ;
}