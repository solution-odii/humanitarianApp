import 'package:flutter/material.dart';
import 'package:myproj/CustomShapeClipper.dart';
import 'package:myproj/main.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        elevation: 0.5,
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InfoPageTopPart(),
            InfoPageBottomPart()
          ],
        ),
      ),
    );
  }

}

class InfoPageTopPart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 200.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [firstColor, secondColor]
              ),
            ),
            
            child: Column(
              children: <Widget>[
                SizedBox(height: 20.0,),
                Text("We are the Obike's ", 
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }

}

class InfoPageBottomPart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(left: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("Our Vision and Mission", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),

          SizedBox(height: 20.0),
          Text("1.", style: TextStyle(fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20.0),
          Text("2.", style: TextStyle(fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20.0),
          Text("3.", style: TextStyle(fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 20.0),
          Text("4.", style: TextStyle(fontWeight: FontWeight.bold),
          ),

        
        ],
      ),
    );
  }

}