import 'package:flutter/material.dart';
import 'package:whats_app/domain/entities/Chat_Item.dart';

class ChatSingleItemWidget extends StatelessWidget {
  final ChatItem chatItem;
  const ChatSingleItemWidget({super.key, required this.chatItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5.0),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(shape: BoxShape.circle),

          width: 70,
          height: 85,
          child: Image.asset(chatItem.imageUrl, fit: BoxFit.fill),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(chatItem.name, style: TextStyle(fontWeight: FontWeight.bold)),
            if (chatItem.isCertified)
              Image.asset(
                'lib/assets/images/ic_certified.png',
                width: 16,
                height: 16,
              ),
          ],
        ),
        subtitle: Row(
          children: [
            chatItem.isRead
                ? Image.asset(
                    'lib/assets/images/ic_read.png',
                    width: 16,
                    height: 16,
                  )
                : Image.asset(
                    'lib/assets/images/ic_read.png',
                    width: 16,
                    height: 16,
                    color: Colors.grey,
                  ),
            Text(chatItem.message),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(chatItem.time),
            if (!chatItem.isRead)
              Container(
                margin: EdgeInsets.only(top: 4),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '${chatItem.messageCount}',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
