import 'dart:ui';

import 'package:flutter/material.dart';

class ContainerBackgroundColor extends StatelessWidget {
  const ContainerBackgroundColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Lorem ipsum",
        style: TextStyle(
          fontWeight: FontWeight.w800,
        ),
      ),
      width: 320,
      height: 240,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
    );
  }
}
