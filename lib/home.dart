import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List imgList = [
  {
    'src':
        'https://bookthumb-phinf.pstatic.net/cover/208/777/20877727.jpg?type=m1&udate=20220320',
    'name': '',
  },
  {
    'src':
        'https://bookthumb-phinf.pstatic.net/cover/205/546/20554603.jpg?type=m1&udate=20220320',
    'name': ''
  },
  {
    'src':
        'https://bookthumb-phinf.pstatic.net/cover/207/909/20790919.jpg?type=m1&udate=20220320',
    'name': ''
  },
];

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
        child: Column(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '내 도서',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              Icon(CupertinoIcons.arrow_right),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CarouselSlider(
              options: CarouselOptions(height: 112.0, viewportFraction: 0.3),
              items: imgList
                  .map((item) => Container(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: ClipRRect(
                              child: Stack(
                            children: <Widget>[
                              Image.network(item['src'], fit: BoxFit.cover),
                              Positioned(
                                bottom: 0.0,
                                left: 0.0,
                                right: 0.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(200, 0, 0, 0),
                                        Color.fromARGB(0, 0, 0, 0)
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 20.0),
                                  child: Text(
                                    '${item['name']}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ),
                      ))
                  .toList()),
        ]));
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
