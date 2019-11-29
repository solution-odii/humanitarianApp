import 'package:flutter/material.dart';
import 'package:myproj/Info/InfoPageListView.dart';

class InfoScreen extends StatefulWidget {
  InfoScreen();
  @override
  InfoScreenState createState() => InfoScreenState();
}

class InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info',
          style: TextStyle(
            color: Colors.white,),
        ),
        elevation: 0.5,
        centerTitle: true,
      ),

      body: InfoPageListView(),
    );
  }
}


