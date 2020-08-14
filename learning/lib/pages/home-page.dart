import 'package:flutter/material.dart';
import 'package:learning/components/task-list.dart';
import 'package:learning/main.dart';
import 'package:learning/models/task.dart';
import 'package:learning/pages/new-task-page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color colorDarkBlack = Color.fromRGBO(30, 30, 30, 1);

  var tasks = new List<Task>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDarkBlack,
      body: SafeArea(
        child: TaskList(tasks),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {

          analytics.logEvent(name: 'hello_world');

          analytics.setCurrentScreen(screenName: 'CreateTaskScreen');

          var taskCreatedFromNavigation = await Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => NewTaskPage(),
              settings: RouteSettings(name: 'NewTaskPage')
            ),
          );
            
          if (taskCreatedFromNavigation != null) {

            analytics.logEvent(name: 'task_created');

            analytics.setCurrentScreen(screenName: 'HomeScreen');

            setState(() {
              tasks.add(taskCreatedFromNavigation);
            });
          }
        },
        label: Text('New task'),
        icon: Icon(Icons.add),
        backgroundColor: Color(0xff6066CD),
      ),
    );
  }
}
