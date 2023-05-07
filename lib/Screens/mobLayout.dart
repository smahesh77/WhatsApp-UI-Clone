import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/contactsList.dart';

import '../colors.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,//number of tabs chats status and calls so 3
        
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search,color: Colors.grey,),
              onPressed: () { },
              splashRadius: 20,
            ),
            IconButton(
              icon: const Icon(Icons.more_vert,color: Colors.grey,),
              onPressed: () { },
              splashRadius: 20,//the circle which comes when you tap the icon
            )
            ],
            bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 2,// to thicken the indicator
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,// to make only the selected label green
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
              tabs: [
                Tab(text: 'CHATS',),//the labels
                Tab(text: 'STATUS',),
                Tab(text: 'CALLS',),
                
              ],
              
              ),

        ),

        body: TabBarView(
          children: [
            const conlist(),
            Scaffold(appBar: AppBar(title: Text("status"),),),
            Scaffold(appBar: AppBar(title: Text("calls"),),)
          ],
        ),

        )
        );
  }
}
