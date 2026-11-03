import 'package:flutter/material.dart';

class SingleProfilePicturePage extends StatelessWidget {
  final String imageUrl;
  const SingleProfilePicturePage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color.fromARGB(96, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(96, 255, 255, 255),
        foregroundColor: Color.fromARGB(96, 255, 255, 255),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:  Color.fromARGB(96, 255, 255, 255),
        ),
        child: InteractiveViewer(
           minScale: 1,
            maxScale: 4,
         child: Image.asset(
               imageUrl,
              fit: BoxFit.contain,
              width: 300,
              height: 300,
              
            ),
        ),
      ),
    );
  }
}