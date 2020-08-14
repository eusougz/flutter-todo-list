import 'package:flutter/material.dart';
import 'package:learning/components/inputs/text-input.dart';
import 'package:learning/models/task.dart';

class NewTaskPage extends StatelessWidget {
  final Color colorDarkBlack = Color.fromRGBO(30, 30, 30, 1);
  final Color colorWhite = Color.fromRGBO(220, 220, 220, 1);

  var nameInputController = TextEditingController();
  var descriptionInputController = TextEditingController();

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
                    Navigator.pop(context, null);
                  },
                ),
              ),
              TextInput(
                labelText: 'Task name',
                hintText: 'Type your task name...',
                controller: nameInputController,
              ),
              Container(
                padding: EdgeInsets.only(top: 18),
                child: TextInput(
                  labelText: 'Description',
                  hintText: 'Type your task description...',
                  maxLines: 5,
                  controller: descriptionInputController,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.all(18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Color(0xff7D46A7),
                      textColor: Colors.white,
                      child: Text('Create'),
                      onPressed: () {
                        Navigator.pop(context,
                        new Task(
                          name: nameInputController.value.text.toString(),
                          description: descriptionInputController.value.text.toString()
                        ),);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
