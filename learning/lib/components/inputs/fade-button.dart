import 'package:flutter/material.dart';

class FadeButton extends StatelessWidget {
  final Color startColor;
  final Color endColor;
  final String text;
  final Function() onFadePressed;

  FadeButton(
      {@required this.text,
      @required this.startColor,
      @required this.endColor,
      @required this.onFadePressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: onFadePressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80.0),
        ),
        padding: EdgeInsets.all(0.0),
        child: Container(
          padding: EdgeInsets.only(top: 12, bottom: 12, left: 24, right: 24),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[startColor, endColor]),
            borderRadius: BorderRadius.circular(80.0),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.white10,
                blurRadius: 25,
                offset: Offset(0,0)
              )
            ]
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
