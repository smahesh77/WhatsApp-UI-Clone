import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/mobLayout.dart';
import 'package:whatsapp_ui_clone/responsive/responsiveLayout.dart';

import 'Screens/webLayout.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
        home: const ResLayout(
            MobileScreenLayout: MobileScreenLayout(),
            WebScreenLayout: WebScreenLayout()));
  }
}
