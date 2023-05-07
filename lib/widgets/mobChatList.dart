import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_clone/colors.dart';
import 'package:whatsapp_ui_clone/info.dart';
import 'package:whatsapp_ui_clone/widgets/chatlist.dart';

class mobChat extends StatelessWidget {
  final String name;
  const mobChat({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
            splashRadius: 20,
            tooltip: 'video call',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone,
              color: Colors.white,
            ),
            splashRadius: 20,
            tooltip: 'voice call',
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            splashRadius: 20,
            tooltip: 'options',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: chatlist()),
          TextField(
            decoration: InputDecoration(
                fillColor: mobileChatBoxColor,
                filled: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.currency_rupee,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        splashRadius: 20,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                hintText: 'Type a message',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: EdgeInsets.all(10)),
          ),
        ],
      ),
    );
  }
}
