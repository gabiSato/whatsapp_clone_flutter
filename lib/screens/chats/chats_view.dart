import 'package:flutter/material.dart';

import '../../widgets/chat_item.dart';
import '../../contacts_data.dart';

class ChatsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: 2,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          color: Colors.grey,
          indent: 88,
          endIndent: 14,
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
