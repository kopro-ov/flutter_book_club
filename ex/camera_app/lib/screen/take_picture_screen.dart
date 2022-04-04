import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

//사용자가 주어진 카메라를 사용하여 사진을 찍을 수 있는 화면
class TakePictureScrren extends StatefulWidget {
  final CameraDescription camera;
  const TakePictureScrren({Key? key, required this.camera}) : super(key: key);

  @override
  State<TakePictureScrren> createState() => _TakePictureScrrenState();
}

class _TakePictureScrrenState extends State<TakePictureScrren> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    //위젯의 생명주기 종류시 컨트롤러 해제
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Take a picture')),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            //Future가 완료되면 프리뷰 보여주기
            return CameraPreview(_controller);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() async {
          try {
            //카메라 초기화가 완료됐는지 확인
            await _initializeControllerFuture;

            //path 패키지를 사용하여 이미지가 저장될 경로 지정
            final path = join(
              //본 예제는 임시 디렉토리에 이미지 저장
              //플러그인을 사용하여 임시 디렉토리 찾기
              (await getTemporaryDirectory()).path,
              '${DateTime.now()}.png',
            );

            await _controller.takePicture(path);
          } catch (e) {
            //에러 발생 시 콘솔에 에러 로그
            print(e);
          }
        }),
      ),
    );
  }
}
