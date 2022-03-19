import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Flutter Demo',
      home: PlatformScaffold(
        appBar: PlatformAppBar(
          title: const Text('Hello World'),
        ),
        body: const Center(child: Text("Screen 1")),
      ),
    );
  }
}
