import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/contacts_data.dart';

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
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
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.people,
                color: Colors.white,
              ),
              backgroundColor: Color.fromRGBO(4, 217, 57, 1),
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
            ),
            title: Text(
              'Novo contato',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: ExactAssetImage(contactsData[0]["image"]),
            ),
            title: Text(
              contactsData[0]["name"],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              contactsData[0]["status"],
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: ExactAssetImage(contactsData[1]["image"]),
            ),
            title: Text(
              contactsData[1]["name"],
              maxLines: 1,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              contactsData[1]["status"],
              maxLines: 1,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
