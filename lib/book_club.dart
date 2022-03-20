import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BookClub extends StatelessWidget {
  const BookClub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      '북클럽',
      style: TextStyle(fontSize: 40),
    ));
  }
}
