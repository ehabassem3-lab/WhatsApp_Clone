import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Home_Bloc/Hom_Bloc.dart';
import 'App_Bar_Widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4 ,
      child: Scaffold(
        appBar:  AppBarWidget(),
        body:  TabBarView(
          children: [
            Center(child: Text('Groups')),
            Center(child: Text('Chats')),
            Center(child: Text('Status')),
            Center(child: Text('Calls')),
          ],
        ),
      ),
    );
  }
}