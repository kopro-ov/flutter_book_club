import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '폼 검증 데모',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  //form위젯에 유니크한 키값을 부여하고 검증시 사용
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    myController.dispose(); //컨트롤러 화면이 종료될 때 dispose() 메서드로 반드시 해제
    super.dispose();
  }

  _printLatestValue() {
    print('두 번째 text field : ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Input 연습"),
        ),
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                validator: (String? value) {
                  return (value != null) ? '글자를 입력하세요.' : null;
                },
              )
            ],
          ),
        ));
  }
}
