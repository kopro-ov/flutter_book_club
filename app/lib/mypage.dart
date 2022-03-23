import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'login.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Row(
        children: [
          ElevatedButton(
              child: Text('로그인 하기'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              }),
        ],
      ),
    );
  }
}
