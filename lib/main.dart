import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whats_app/ui/bloc/Home_Bloc/Hom_Bloc.dart';
import 'package:whats_app/ui/screens/Home_Page.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(create: (context) => HomeBloc() , child: HomePage()) 
    );
  }
}