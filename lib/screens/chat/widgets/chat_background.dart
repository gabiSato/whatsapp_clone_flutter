import 'package:flutter/material.dart';

class ChatBackground extends StatelessWidget {
  ChatBackground({@required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
