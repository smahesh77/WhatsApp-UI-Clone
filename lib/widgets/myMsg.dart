import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_ui_clone/colors.dart';

class myMsg extends StatelessWidget {
  final String message, date;
  const myMsg({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, top: 5, right: 30, bottom: 20),
                child: Text(
                  message,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style:
                          const TextStyle(fontSize: 13, color: Colors.white60),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    const Icon(//the blue tick
                      Icons.done_all,
                      size: 20,
                      color: Colors.blue,
                    ) 
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
