import 'package:flutter/material.dart';
import 'package:learning/models/task.dart';

class TaskInfosPage extends StatelessWidget {
  final Task _task;

  TaskInfosPage(this._task);

  final Color colorDarkBlack = Color.fromRGBO(30, 30, 30, 1);
  final Color colorWhite = Color.fromRGBO(220, 220, 220, 1);
  final Color colorBlack = Color.fromRGBO(80, 80, 80, 1);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: colorDarkBlack,
        body: Container(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 18),
                child: IconButton(
                  color: colorWhite,
                  icon: Icon(Icons.keyboard_arrow_left),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-1, 1),
                      child: Text(
                        'Task name',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: colorWhite,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-1, 1),
                      padding: EdgeInsets.only(top: 8, bottom: 24),
                      child: Text(
                        _task.name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          color: colorWhite,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-1, 1),
                      child: Text(
                        'Description',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: colorWhite,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-1, 1),
                      padding: EdgeInsets.only(top: 8, bottom: 24),
                      child: Text(
                        _task.description,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 16,
                          color: colorWhite,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment(-1, 1),
                      child: Text(
                        'Status',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: colorWhite,
                        ),
                      ),
                    ),
                    Container(
                        alignment: Alignment(-1, 1),
                        padding: EdgeInsets.only(top: 8),
                        child: _task.done
                            ? Chip(
                                avatar: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                backgroundColor:
                                    Color.fromRGBO(89, 236, 182, 1),
                                label: Text(
                                  'Completed',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : Chip(
                                avatar: Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.white,
                                ),
                                backgroundColor: colorBlack,
                                label: Text(
                                  'To do',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
