import 'dart:async';

import 'package:learning/models/task.dart';

class HomePageBloc {
  var tasks = new List<Task>();

  final _streamController = StreamController<List<Task>>();

  Sink<List<Task>> get _input => _streamController.sink;
  Stream<List<Task>> get output => _streamController.stream;
  
  void addTask(Task task) {
    tasks.add(task);
    _input.add(tasks);
  }

  void removeAt(int index) {
    tasks.removeAt(index);
    _input.add(tasks);
  }

  void completeAt(int index) {
    tasks[index].complete();
    _input.add(tasks);
  }

  dispose() {
    _streamController.close();
  }
}
