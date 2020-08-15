import 'package:flutter/material.dart';

import './widgets/message_container.dart';
import './widgets/chat_background.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({@required this.imagePath, @required this.contactName});

  final String imagePath;
  final String contactName;

  @override
  Widget build(BuildContext context) {
    return ChatBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          titleSpacing: -30,
          title: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(imagePath),
            ),
            title: Text(
              contactName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              'online',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            // ],
          ),
          actions: [
            IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
            IconButton(icon: Icon(Icons.phone), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
        body: Column(
          children: [
            Expanded(child: ListView()),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 8,
              ),
              child: Row(
                children: [
                  Expanded(child: MessageContainer()),
                  SizedBox(width: 8),
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Color.fromRGBO(7, 94, 85, 1),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.mic),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
