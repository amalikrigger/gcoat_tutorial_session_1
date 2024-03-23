import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];
  final _myBox = Hive.box('mybox');

  createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  void updateDatabase() {
    _myBox.put(
      "TODOLIST",
      todoList,
    );
  }
}
