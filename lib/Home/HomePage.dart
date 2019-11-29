import 'package:flutter/material.dart';
import 'package:myproj/Home/HomeScreenBottomPart.dart';
import 'package:myproj/Home/HomeScreenTopPart.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[HomeScreenTopPart(), HomeScreenBottomPart()],
            ),
          ),
        );
  }
}