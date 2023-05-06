import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResLayout extends StatelessWidget {
  final Widget MobileScreenLayout, WebScreenLayout;
  const ResLayout(
      {super.key,
      required this.MobileScreenLayout,
      required this.WebScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          //web screen
          return WebScreenLayout;
        }
        //mob screen
        return MobileScreenLayout;
      },
    );
  }
}
