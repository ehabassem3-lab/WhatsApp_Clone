import 'package:flutter/material.dart';
import 'package:whats_app/ui/screens/tabs/chat/Chat_Tab_Widget.dart';
import 'widgets/App_Bar_Widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4 ,
      child: Scaffold(
        appBar:  AppBarWidget(),
        body:  TabBarView(
          children: [
            Center(child: Text('Groups')),
            ChatTabWidget(),
            Center(child: Text('Status')),
            Center(child: Text('Calls')),
          ],
        ),
      ),
    );
  }
}