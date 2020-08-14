import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final int maxLines;
  final TextEditingController controller;

  TextInput(
      {@required this.labelText,
      this.hintText = '',
      this.maxLines = 1,
      @required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom:8, left: 12),
          alignment: Alignment(-1,0),
          child: Text(labelText, style: TextStyle(color: Colors.white),),
        ),
        TextField(
          controller: controller,
          maxLines: maxLines,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white54),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(22),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        ),
      ],
    );
  }
}
