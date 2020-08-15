import 'package:flutter/material.dart';

class MessageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.mood),
            color: Colors.grey,
            onPressed: () {},
          ),
          Expanded(
            flex: 1,
            child: TextField(
              textInputAction: TextInputAction.newline,
              cursorColor: Color.fromRGBO(7, 94, 85, 1),
              minLines: 1,
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: 'Digite uma mensagem',
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.attach_file),
            color: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
