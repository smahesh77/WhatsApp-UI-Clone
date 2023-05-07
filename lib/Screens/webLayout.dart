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
          child: SingleChildScrollView(
            child: Column(
              children: [
                //webprofilebar
                //websearchbar
                conlist(),
              ],
            ),
          ),
        ),
        //webScreen
        Container(
          
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            color: Colors.grey[800]
            // image: DecorationImage(
            //   image: AssetImage('assets/imagesg/bg.png'),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Center(child: const Text('Chats are here')),
        ),
      ],
    ));
  }
}
