import 'package:flutter/material.dart';
import 'package:learning/components/inputs/fade-button.dart';
import 'package:learning/pages/home-page.dart';

class WelcomePage extends StatelessWidget {
  final Color colorDarkBlack = Color.fromRGBO(30, 30, 30, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorDarkBlack,
      bottomSheet: Container(
        child: Text(
          '@ eusougz',
          style: TextStyle(color: Colors.white60),
        ),
        alignment: Alignment(0, 0),
        height: 50,
        color: colorDarkBlack,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/welcome.png'),
            ),
            FadeButton(
                text: 'Get started',
                startColor: Color(0xff6066CD),
                endColor: Color(0xff7D46A7),
                onFadePressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => HomePage(),
                      settings: RouteSettings(name: 'HomePage')
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
