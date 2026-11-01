class ChatItem {
  final String imageUrl;
 final String name;
 final String message;
 final String time;
  final bool isRead;
  final bool isCertified; // Optional field for the last message
  final int? messageCount; // Optional field for the last message
  ChatItem({
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    required this.isRead,
    this.messageCount,
     required this.isCertified,
  });



}
