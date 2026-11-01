import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whats_app/assets/colors/Colors.dart';
import 'package:whats_app/domain/entities/Pop_Out.dart';
import 'package:whats_app/ui/bloc/Home_Bloc/Hom_Bloc.dart';
import '../../bloc/Home_Bloc/Home_Event.dart';
import '../../bloc/Home_Bloc/Home_States.dart';



class PopOutWidget extends StatelessWidget {
  const PopOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeStates>(
      builder: (context, state) {
      
        final selectedItem = (state as PopOutState).selectedItem;

        return PopupMenuButton<SampleItem>(
          iconColor:  App_Colors.secondry,
          initialValue: selectedItem,
          onSelected: (item) {
            context.read<HomeBloc>().add(
              ChangePopOutItem(item),
            );
          },

          itemBuilder: (context) => [
            const PopupMenuItem(
            
              value: SampleItem.NewContact,
              child: Text('New Contact'),
            ),
            const PopupMenuItem(
              value: SampleItem.NewGroup,
              child: Text('New Group'),
            ),
            const PopupMenuItem(
              value: SampleItem.LinkedDevices,
              child: Text('Linked Devices'),
            ),
            const PopupMenuItem(
              value: SampleItem.StarredMessages,
              child: Text('Starred Messages'),
            ),
            const PopupMenuItem(
              value: SampleItem.Settings,
              child: Text('Settings'),  
            ),
          ],
        );
      },
    );
  }
}