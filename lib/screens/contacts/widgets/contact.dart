import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/screens/chat/chat_screen.dart';

class Contact extends StatelessWidget {
  Contact({
    @required this.imagePath,
    @required this.contactName,
    @required this.contactStatus,
  });

  final String imagePath;
  final String contactName;
  final String contactStatus;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: ExactAssetImage(imagePath),
        radius: 22,
      ),
      title: Text(
        contactName,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        contactStatus,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => ChatScreen(
            imagePath: imagePath,
            contactName: contactName,
          ),
        ));
      },
    );
  }
}
