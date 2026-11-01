import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whats_app/assets/colors/Colors.dart';
import 'package:whats_app/domain/entities/Pop_Out.dart';
import 'package:whats_app/ui/bloc/Home_Bloc/Hom_Bloc.dart';
import 'package:whats_app/ui/bloc/Home_Bloc/Home_Event.dart';
import 'package:whats_app/ui/bloc/Home_Bloc/Home_States.dart';




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
              
              value: SampleItem.itemOne,
              child: Text('Item One'),
            ),
            const PopupMenuItem(
              value: SampleItem.itemTwo,
              child: Text('Item Two'),
            ),
            const PopupMenuItem(
              value: SampleItem.itemThree,
              child: Text('Item Three'),
            ),
          ],
        );
      },
    );
  }
}