import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/contactsList.dart';

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
          child: Column(
            children: [
              //webprofilebar
              //websearchbar
              conlist(),
            ],
          ),
        ),
        //webScreen
        Container(
  width: MediaQuery.of(context).size.width * 0.75,
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
        info.length > 1 ? info[1]['profilePic'].toString() : '',
      ),
      fit: BoxFit.cover,
    ),
  ),
),
      ],
    ));
  }
}
