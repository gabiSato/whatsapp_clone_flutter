import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/contacts_data.dart';
import 'package:whatsapp_clone_flutter/widgets/chat_item.dart';

class ChatView extends StatelessWidget {
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
          imagePath: contactsData[index]["image"],
          contactName: contactsData[index]["name"],
          lastMessage: contactsData[index]["message"],
          lastMessageHour: contactsData[index]["hour"],
        );
      },
    );
  }
}
