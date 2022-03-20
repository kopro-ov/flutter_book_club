import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      '홈',
      style: TextStyle(fontSize: 40),
    ));
  }
}
