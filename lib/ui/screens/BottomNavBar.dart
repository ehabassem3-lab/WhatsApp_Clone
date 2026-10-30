import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/Home_Bloc/Hom_Bloc.dart';
import '../bloc/Home_Bloc/Home_Event.dart';
import '../bloc/Home_Bloc/Home_States.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomBloc, HomeStates>(
      builder: (context, state) {
        return NavigationBar(
          selectedIndex: state.currentIndex,

          onDestinationSelected: (index) {
            context.read<HomBloc>().add(
              ChangeBottomNavIndex(index),
            );
          },

          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline),
              selectedIcon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}