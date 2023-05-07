import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_clone/colors.dart';

class webBar extends StatelessWidget {
  const webBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.35,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(right: BorderSide(color: dividerColor)),
          color: webAppBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,//to put space the avatar and option so that they apear at end
        children: [
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg'),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.group_sharp,
                  color: Colors.grey,
                  
                ),
                tooltip: 'contacts',
                splashRadius: 20,
              ),
              SizedBox(width: 10,),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.donut_large_outlined,
                  color: Colors.grey,
                ),
                tooltip: 'status',
                splashRadius: 20,
              ),
              SizedBox(width: 10,),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment,
                  color: Colors.grey,
                ),
                splashColor: Colors.pink,
                tooltip: 'messages',
                splashRadius: 20,
              ),
              SizedBox(width: 10,),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
                tooltip: 'menu',
                splashRadius: 20,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
