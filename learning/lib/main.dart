import 'package:flutter/material.dart';
import 'package:learning/pages/welcome-page.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

FirebaseAnalytics analytics;

void main() {
  analytics = FirebaseAnalytics();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff7D46A7),
        fontFamily: 'NunitoSans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(),
    );
  }
}
