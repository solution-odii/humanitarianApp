import 'package:flutter/material.dart';
import 'package:myproj/Donate/DonatePageBottomPart.dart';
import 'package:myproj/Donate/DonatePageTopPart.dart';
import 'package:myproj/Utils/Navigators.dart';
import 'package:myproj/main.dart';



class DonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        title: Text("Amount to Donate"),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DonatePageTopPart(),
            DonatePageBottomPart(),
          ],
        ),
      ),
    );
  }
}






