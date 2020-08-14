import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {this.imagePath,
      this.contactName,
      this.lastMessage,
      this.lastMessageHour});

  final String imagePath;
  final String contactName;
  final String lastMessage;
  final String lastMessageHour;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: ExactAssetImage(imagePath),
        radius: 28,
      ),
      title: Text(
        contactName,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Icon(
            Icons.done_all,
            color: Colors.grey,
            size: 16,
          ),
          SizedBox(width: 4),
          Text(
            lastMessage,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
      trailing: Text(lastMessageHour),
    );
  }
}
