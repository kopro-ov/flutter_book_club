import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_buildTop()],
    );
  }

  //상단
  Widget _buildTop() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '분야별 도서 전체보기',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              Icon(CupertinoIcons.arrow_right),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('교육')
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('에세이')
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('문학')
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('인문학')
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('교육')
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('에세이')
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('문학')
                ],
              ),
              Column(
                children: const <Widget>[
                  Icon(
                    CupertinoIcons.bookmark,
                    size: 40,
                  ),
                  Text('인문학')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
