import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StopWatch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StopWatchPage(),
    );
  }
}

class StopWatchPage extends StatefulWidget {
  const StopWatchPage({Key? key}) : super(key: key);

  @override
  State<StopWatchPage> createState() => _StopWatchPageState();
}

class _StopWatchPageState extends State<StopWatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StopWatch'),
      ),
      body: _buildBody(),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _clickButtton();
        }),
        child: Icon(Icons.play_arrow),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

//내용
Widget _buildBody() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '0',
                    style: TextStyle(fontSize: 50.0),
                  ),
                  Text('00'),
                ],
              ),
              Container(
                width: 100,
                height: 200,
                child: ListView(
                  children: <Widget>[],
                ),
              )
            ],
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: FloatingActionButton(
              backgroundColor: Colors.deepOrange,
              onPressed: () {},
              child: Icon(Icons.rotate_left),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('랩타입'),
            ),
          )
        ],
      ),
    ),
  );
}

//시작 또는 일시정지 버튼
void _clickButtton() {}
