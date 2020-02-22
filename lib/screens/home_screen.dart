import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/screens/calls_view.dart';
import 'package:whatsapp_clone_flutter/screens/chat_view.dart';
import 'package:whatsapp_clone_flutter/screens/contacts_screen.dart';
import 'package:whatsapp_clone_flutter/widgets/tab_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          titleSpacing: 22,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(child: Text('Novo grupo')),
                const PopupMenuItem(child: Text('Nova transmissão')),
                const PopupMenuItem(child: Text('Whatsapp Web')),
                const PopupMenuItem(child: Text('Mensagens favoritas')),
                const PopupMenuItem(child: Text('Configurações')),
              ],
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              TabItem(icon: Icon(Icons.camera_alt)),
              TabItem(
                labeled: true,
                label: 'CONVERSAS',
              ),
              TabItem(
                labeled: true,
                label: 'STATUS',
              ),
              TabItem(
                labeled: true,
                label: 'CHAMADAS',
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Container(),
          ChatView(),
          Container(),
          CallsView(),
        ]),
        floatingActionButton: FloatingActionButton(
          elevation: 4,
          child: Icon(Icons.chat),
          backgroundColor: Color.fromRGBO(4, 217, 57, 1),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ContactsScreen()));
          },
        ),
      ),
    );
  }
}
