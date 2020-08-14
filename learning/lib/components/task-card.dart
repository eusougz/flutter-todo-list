import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/models/task.dart';
import 'package:learning/pages/task-infos-page.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final void Function() onCompleteTask;

  final Color colorWhite = Colors.white;
  final Color colorBlack = Color.fromRGBO(80, 80, 80, 1);

  TaskCard({@required this.task, @required this.onCompleteTask});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: task.done ? Color.fromRGBO(89, 236, 182, 1) : colorBlack,
            padding: EdgeInsets.only(
                right: 10.0, left: task.done ? 20 : 8, top: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: task.done ? 20.0 : 12.0),
                      child: task.done
                          ? Icon(
                              Icons.check,
                              color: colorWhite,
                            )
                          : Container(
                              padding: EdgeInsets.all(0),
                              child: IconButton(
                                icon: Icon(
                                  Icons.check_circle_outline,
                                  color: colorWhite,
                                ),
                                onPressed: onCompleteTask,
                              ),
                            ),
                    ),
                    Text(
                      task.name,
                      style: TextStyle(
                        color: colorWhite,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_right,
                    color: colorWhite,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                        builder: (context) => TaskInfosPage(task),
                        settings: RouteSettings(name: 'TaskInfosPage')
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
