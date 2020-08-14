import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.greenAccent[700],
                backgroundImage: NetworkImage(
                  'https://res06.bignox.com/noxinfluencer/youtube/avatar/35245626f69b780ad908c76b0526ff54.png',
                ),
                radius: 28,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  height: 22,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(4, 217, 57, 1),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              )
            ],
          ),
          title: Text(
            'Meu status',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'Toque para atualizar seu status',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
