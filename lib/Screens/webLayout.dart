import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';
import 'package:whatsapp_ui_clone/widgets/chatlist.dart';
import 'package:whatsapp_ui_clone/widgets/contactsList.dart';
import 'package:whatsapp_ui_clone/widgets/webBar.dart';
import 'package:whatsapp_ui_clone/widgets/webChatAppbar.dart';
import 'package:whatsapp_ui_clone/widgets/webSearchBar.dart';

import '../info.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                webBar(),
                webSearchBar(),
                conlist(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 1,
          child: Container(
            color: Colors.grey,
          ),
        ),
        //webScreen
        Container(
            width: MediaQuery.of(context).size.width * 0.65,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                webChatAppBar(),
                Expanded(child: chatlist()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: dividerColor),
                      ),
                      color: chatBarMessage),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          )),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: "Type a message",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(left: 20)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    ));
  }
}
