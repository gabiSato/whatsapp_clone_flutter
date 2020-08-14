import 'package:flutter/material.dart';

class CallsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
                text:
                    'Para começar a fazer chamadas com seus contatos que usam o Whatsapp, toque em'),
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Icon(
                  Icons.add_call,
                  color: Colors.grey,
                ),
              ),
            ),
            TextSpan(text: 'no final da tela.')
          ],
        ),
      ),
    );
  }
}
