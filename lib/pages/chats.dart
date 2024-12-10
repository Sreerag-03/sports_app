import 'package:flutter/material.dart';
import 'package:sports_app/utils/colors.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text("Chats",style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w500),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(child: Text("No conversations yet.")),
      ),
    );
  }
}