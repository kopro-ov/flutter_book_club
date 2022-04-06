import 'package:flutter/material.dart';

class ContainerCetering extends StatelessWidget {
  const ContainerCetering({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Lorem ipsum',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      width: 320,
      height: 240,
      color: Colors.grey[300],
    );
  }
}
