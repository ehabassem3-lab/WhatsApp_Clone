import 'package:flutter/material.dart';
import 'package:whats_app/assets/colors/Colors.dart';
import 'package:whats_app/assets/strings/String_Source.dart';
import 'package:whats_app/assets/styles/Text_Styles.dart';
import 'package:whats_app/ui/screens/widgets/Pop_Out_Widget.dart';
import 'package:whats_app/ui/screens/widgets/Tabs_Widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
   AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      bottom:  TabsWidget(),
      toolbarHeight: 80,
      backgroundColor: App_Colors.primary,
      title: Text(StringSource.AppBarTitle, style: TextStyles.heading),
      actions: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: App_Colors.secondry, size: 30),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 0 ),
          child: PopOutWidget(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(100.0);
}