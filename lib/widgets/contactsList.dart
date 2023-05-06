import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../info.dart';

class conlist extends StatelessWidget {
  const conlist({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        //creates a list view
        itemCount: info.length,
        itemBuilder: (context, index) {
          return ListTile(
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
            leading:CircleAvatar(
              // leading thing will come at first of the tile use for check boxes
              backgroundImage: AssetImage('assets/images/cupertino.png')
            ),
          );
        },
      ),
    );
  }
}
