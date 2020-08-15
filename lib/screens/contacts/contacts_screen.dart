import 'package:flutter/material.dart';

import '../../contacts_data.dart';

import './widgets/contact.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Contatos'),
            SizedBox(height: 3),
            Text(
              '2 contatos',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(child: Text('Convidar um amigo')),
              const PopupMenuItem(child: Text('Contatos')),
              const PopupMenuItem(child: Text('Atualizar')),
              const PopupMenuItem(child: Text('Ajuda')),
            ],
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.people,
                color: Colors.white,
              ),
              backgroundColor: Color.fromRGBO(4, 217, 57, 1),
              radius: 22,
            ),
            title: Text(
              'Novo grupo',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.person_add,
                color: Colors.white,
              ),
              backgroundColor: Color.fromRGBO(4, 217, 57, 1),
              radius: 22,
            ),
            title: Text(
              'Novo contato',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...contactsData.map((contact) {
            return Contact(
              imagePath: contact["image"],
              contactName: contact["name"],
              contactStatus: contact["message"],
            );
          }).toList(),
        ],
      ),
    );
  }
}
