import 'package:flutter/material.dart';
import 'package:whats_app/domain/entities/Chat_Item.dart';
import 'package:whats_app/ui/screens/widgets/Chat_Single_Item_Widget.dart';
    

 final List<ChatItem> chatItems = [
  ChatItem(
    imageUrl: 'lib/assets/images/ic_profile1.png',
    name: ' John Doe ',
    message: 'Hey, how are you?',
    time: '12:30 PM',
    isRead: false,
    messageCount: 1,   
    isCertified: true, 
  ),
  ChatItem(
    imageUrl: 'lib/assets/images/ic_profile2.png',
    name: 'Ehab Assem',
    message: 'Let\'s catch up later.',
    time: '11:15 AM',
    isRead: true,
    messageCount: 3,
    isCertified: false,
  ),
  
 ] ;

class ChatTabWidget extends StatelessWidget {
  const ChatTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
      
        shrinkWrap: true,
        itemCount: chatItems.length,
        itemBuilder: (context, index) {
          final chatItem = chatItems[index];
          return  ChatSingleItemWidget(chatItem: chatItem) ;
        },
      ),
    );
  }
}