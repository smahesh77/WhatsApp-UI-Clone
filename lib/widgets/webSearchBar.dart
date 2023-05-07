import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_clone/colors.dart';

class webSearchBar extends StatelessWidget {
  const webSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.35,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: dividerColor))),
      child: Row(
      
        children: [
          Expanded(
            flex: 1,
            child: TextField(
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                filled: true,
                fillColor: searchBarColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.search,
                    size: 20,
                  ),
                ),
                
                hintStyle: const TextStyle(fontSize: 14),
                hintText: "Search or start new chat",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.sort,
              color: Colors.grey,
            ),
            tooltip: 'filter',
            splashRadius: 20,
          ),
        ],
      ),
    );
  }
}
