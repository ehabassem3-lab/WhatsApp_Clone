import 'package:flutter/material.dart';
import 'package:whats_app/assets/colors/Colors.dart';

class TabsWidget extends StatelessWidget implements PreferredSizeWidget {
   TabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: App_Colors.secondry,
      labelColor: App_Colors.secondry,
      unselectedLabelColor: Colors.white60,
      tabs:  [
        SizedBox( child:  Tab(icon: Icon(Icons.groups_rounded)) , width: 50,),
        Tab(text: 'CHATS'),
        Tab(text: 'STATUS'),
        Tab(text: 'CALLS'),
      ],
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(48.0); // Standard tab bar height
}