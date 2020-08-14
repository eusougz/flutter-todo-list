import 'package:flutter/material.dart';
import 'package:learning/components/task-card.dart';
import 'package:learning/models/task.dart';
import 'package:learning/pages/homepage_bloc.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;
  final HomePageBloc bloc;

  TaskList({this.tasks, this.bloc});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  final Color colorWhite = Color.fromRGBO(220, 220, 220, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 36.0, bottom: 18.0),
          child: Text(
            'My tasks',
            style: TextStyle(
              color: colorWhite,
              fontSize: 18,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.tasks?.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Dismissible(
                  background: Container(
                      color: Color.fromRGBO(246, 12, 134, 1),
                      alignment: Alignment(1.0, 0.0),
                      padding: EdgeInsets.only(right: 16.0),
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.white,
                      )),
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    widget.bloc.removeAt(index);

                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('Task removed')));
                  },
                  child: TaskCard(
                      task: widget.tasks[index],
                      onCompleteTask: () => {
                        widget.bloc.completeAt(index)
                      }
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
