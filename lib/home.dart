import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[_buildTop(), _buildMiddle(), _buildBottom()],
    );
  }

  //상단
  Widget _buildTop() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '북클럽 바로가기',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              Icon(CupertinoIcons.arrow_right),
            ],
          ),
        ],
      ),
    );
  }

  //중간
  Widget _buildMiddle() {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: CarouselSlider(
          options: CarouselOptions(height: 300.0),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ));
  }

  //하단
  Widget _buildBottom() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
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
