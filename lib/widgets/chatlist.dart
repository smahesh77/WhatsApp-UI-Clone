import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_clone/info.dart';
import 'package:whatsapp_ui_clone/widgets/myMsg.dart';
import 'package:whatsapp_ui_clone/widgets/senderMsg.dart';

class chatlist extends StatelessWidget {
  const chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if (messages[index]['isMe'] == true) {
          return myMsg(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        }
        return senMsg(message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
      },
    );
  }
}
