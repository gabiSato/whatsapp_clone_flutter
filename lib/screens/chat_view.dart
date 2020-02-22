import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/widgets/chat_item.dart';

class ChatView extends StatelessWidget {
  final List<Map> _chatData = [
    {
      "image": "images/1.jpg",
      "name": "Gabriel Raiol",
      "message": "Oi",
      "hour": "21:16"
    },
    {
      "image": "images/2.jpg",
      "name": "Gabriela Sato",
      "message": "kkkkkkk",
      "hour": "20:37"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 2,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey,
          indent: 70,
          endIndent: 16,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return ChatItem(
          imagePath: _chatData[index]["image"],
          contactName: _chatData[index]["name"],
          lastMessage: _chatData[index]["message"],
          lastMessageHour: _chatData[index]["hour"],
        );
      },
    );
  }
}
