import 'package:flutter/material.dart';

import '../../widgets/tab_item.dart';
import '../contacts/contacts_screen.dart';
import '../status_view.dart';
import '../calls/calls_view.dart';
import '../chats/chats_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final floatingButtonIcons = {
    1: Icons.chat,
    2: Icons.camera_alt,
    3: Icons.add_call,
  };

  int _currentTab = 1;

  void _setCurrentTab(int index) {
    setState(() => _currentTab = index);
  }

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
            onTap: _setCurrentTab,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 14),
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
          ChatsView(),
          StatusView(),
          CallsView(),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              if (_currentTab == 2)
                Container(
                  height: 46,
                  margin: const EdgeInsets.only(bottom: 14),
                  child: FloatingActionButton(
                    heroTag: 'secondaryFB',
                    backgroundColor: Colors.grey,
                    elevation: 4,
                    onPressed: () {},
                    child: Icon(Icons.edit),
                  ),
                ),
              if (_currentTab == 3)
                Container(
                  height: 46,
                  margin: const EdgeInsets.only(bottom: 14),
                  child: FloatingActionButton(
                    heroTag: 'secondaryFB',
                    backgroundColor: Colors.grey,
                    elevation: 4,
                    onPressed: () {},
                    child: Icon(Icons.videocam),
                  ),
                ),
              FloatingActionButton(
                heroTag: 'primaryFB',
                elevation: 4,
                child: Icon(floatingButtonIcons[_currentTab]),
                backgroundColor: Color.fromRGBO(4, 217, 57, 1),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactsScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
