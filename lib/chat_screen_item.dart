import 'package:flutter/material.dart';

import 'chat_item.dart';

class ChatItemScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('WhatsApp Demo UI'),
        backgroundColor: Colors.lightGreen[400],
      ),
      body: new ChatItem(),
    );
  }
}