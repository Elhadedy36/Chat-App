import 'package:chat_app/core/widgets/custom_text_form_field.dart';
import 'package:chat_app/feature/auth/presentation/functions/auth_appbar.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: authAppbar(),
      body:CustomScrollView
      (
        slivers: 
        [
          
        ],
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ChatTypingBar(), 
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}


class ChatMessagesScreen extends StatelessWidget {
  const ChatMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
    (
    
    );
  }
}

class ChatTypingBar extends StatelessWidget {
  const ChatTypingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container
      (
       child:  Row(
        children: 
        [
          Expanded(
            
            child: CustomTextFormField(labelText: 'Type here....', controller: TextEditingController())),
            SizedBox(width: 10,),
            Icon(Icons.send),
      
        ],)
      ),
    );
  }
}