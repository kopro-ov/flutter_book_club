import 'package:flutter/material.dart';
import 'package:todo/models/todo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '할일 관리',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoListPage(),
    );
  }
}

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  //할 일 목록을 저장할 리스트
  final _items = <Todo>[];

  //할 일 문자열 조작을 위한 컨트롤러
  var _todoController = TextEditingController();

  @override
  void dispose() {
    //사용이 끝ㅌ나면 해제
    _todoController.dispose();
    super.dispose();
  }

  //할 일 추가
  void _addTodo(Todo todo) {
    setState(() {
      _items.add(todo);
      _todoController.text = '';
    });
  }

  //할 일 삭제 메서드
  void _deleteTodo(Todo todo) {
    setState(() {
      _items.remove(todo);
    });
  }

  //할 일 완료/미완료 메서드
  void _toggleTodo(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할일'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _todoController,
                )),
                ElevatedButton(
                  onPressed: () => _addTodo(Todo(_todoController.text)),
                  child: Text('추가'),
                )
              ],
            ),
            Expanded(
                child: ListView(
              children: <Widget>[],
            ))
          ],
        ),
      ),
    );
  }
}
