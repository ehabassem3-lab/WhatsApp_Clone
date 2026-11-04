import 'package:flutter/material.dart';
import 'package:whats_app/assets/colors/Colors.dart';
import 'package:whats_app/assets/styles/Text_Styles.dart';
import 'package:whats_app/domain/entities/Chat_Item.dart';

class SingleChatPage extends StatelessWidget {
  final ChatItem chatItem;
  const SingleChatPage({super.key, required this.chatItem});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
       
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: App_Colors.primary,
        title: Text(chatItem.name , style: TextStyles.headingSmall),
        actions: [
           Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                // Handle call action
              },
            ),
            IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                // Handle video call action
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // Handle more options action
              },
            ),
          ],
        )
        ],
      ),
      body :  Stack(
        children: [
               Image.asset(
               'lib/assets/images/ic_chat_background.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height, ) ,
                SingleChildScrollView(
                  child: Column(
                    children: [
                    
                    ],
                  ),
                ),  
        ],
      
      )
    );
  }
}