import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_clone/colors.dart';

import '../info.dart';

class conlist extends StatelessWidget {
  const conlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        //creates a list view
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        info[index]['message'].toString(),
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      // leading thing will come at first of the tile use for check boxes
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: dividerColor,
                indent: 85,
              ), //to divide eachchat
            ],
          );
        },
      ),
    );
  }
}
