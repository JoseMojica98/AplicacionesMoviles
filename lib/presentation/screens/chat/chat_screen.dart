import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage:  NetworkImage('https://64.media.tumblr.com/02ec8cab48698706efa3919937f4c05c/ba355d4e06ae9dea-f3/s128x128u_c1/5fc5dc6afd9ed41b4f7330d4ffa3817f32ca0051.pnj'),
          ),
        ),
        title: const Text('Mi amor <3'),
        centerTitle: false,
      ),
      body: _ChatView(),

    );
  }
}

class _ChatView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child:
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
              return ( index % 2 ==0)
              ? const HerMessageBubble()
              : const MyMessageBubble();
            },)
            ),
           
        
            const MessageFieldBox(),
        
          ],
        
        
        ),
      ),
    );
  }
}