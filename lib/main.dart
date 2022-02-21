import 'package:flutter/material.dart';
import './chat_screen_item.dart';

void main() {
  runApp(new ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: new ChatItemScreen());
  }
}
