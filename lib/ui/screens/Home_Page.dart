import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Home_Bloc/Hom_Bloc.dart';
import 'BottomNavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomBloc(),

      child: Scaffold(
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }
}