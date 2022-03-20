import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      '내서재',
      style: TextStyle(fontSize: 40),
    ));
  }
}
