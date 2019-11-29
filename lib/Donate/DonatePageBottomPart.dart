import 'package:flutter/material.dart';
import 'package:myproj/Donate/CharityItemListView.dart';

class DonatePageBottomPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'OR Select Specific Amount to Donate',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          CharityItemListView()
        ],
      ),
    );
  }
}