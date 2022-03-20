import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'home.dart';
import 'book_club.dart';
import 'mypage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '독서앱',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _pages = [Home(), BookClub(), MyPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '잼미니',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20.0),
                child: _pages[_index])),
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          currentIndex: _index,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '홈',
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              label: '북클럽',
              icon: Icon(CupertinoIcons.book),
            ),
            BottomNavigationBarItem(
                label: '내서재', icon: Icon(CupertinoIcons.profile_circled)),
          ],
        ));
  }
}
